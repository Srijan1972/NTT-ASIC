#include "kyber-mult-kernel.h"
#include "kyber-tables.h"

// ---- baked-constant Barrett: r = x*w mod q, mw = floor(w*2^K / q) precomputed ----
// Multiplies bound to latency-2 DSPs to break the long combinational chain
// (read->mul->mul->sub->mod-add/sub->write) that was failing timing. The extra
// latency is pipeline fill, paid once per stage, not per-butterfly throughput.
static inline kdata_t cbarrett(kdata_t x, uint32_t w, uint32_t mw){
#pragma HLS INLINE
    uint64_t xm = (uint64_t)x * mw;
#pragma HLS BIND_OP variable=xm op=mul impl=dsp latency=2
    uint32_t q_est = (uint32_t)(xm >> KBARRETT_K);
    uint32_t xw = x*w;
#pragma HLS BIND_OP variable=xw op=mul impl=dsp latency=2
    uint32_t qq = q_est*KQ;
#pragma HLS BIND_OP variable=qq op=mul impl=dsp latency=2
    uint32_t r = xw - qq;
    return (r >= KQ) ? (kdata_t)(r - KQ) : (kdata_t)r;
}
static inline kdata_t addm(kdata_t a, kdata_t b){
#pragma HLS INLINE
    kdata_t s=a+b; return (s>=KQ)?(kdata_t)(s-KQ):s;
}
static inline kdata_t subm(kdata_t a, kdata_t b){
#pragma HLS INLINE
    return (a>=b)?(kdata_t)(a-b):(kdata_t)(a+KQ-b);
}
static inline kdata_t mulm(kdata_t a, kdata_t b){      // general mul mod q, NO divider
#pragma HLS INLINE
    uint32_t x = (uint32_t)a*b;
#pragma HLS BIND_OP variable=x op=mul impl=dsp latency=2
    uint64_t xmu = (uint64_t)x * KMU;
#pragma HLS BIND_OP variable=xmu op=mul impl=dsp latency=2
    uint32_t q_est = (uint32_t)(xmu >> KMU_SH);
    uint32_t qq = q_est*KQ;
#pragma HLS BIND_OP variable=qq op=mul impl=dsp latency=2
    uint32_t r = x - qq;
    if (r >= KQ) r -= KQ;
    return (kdata_t)r;
}

// Ping-pong stage: read src, write dst (separate arrays => 2 reads/bank + 2
// writes/bank max => II=1 at all strides; same array was 4 accesses/bank at wide
// stride, forcing II=2). LEN compile-time constant per stage.
template<int LEN>
static void fwd_stage_t(const kcoef_t src[KN], kcoef_t dst[KN], int s){
#pragma HLS INLINE off
    FWD_BF: for(int m=0; m<KN/2; m+=KP){
#pragma HLS PIPELINE II=1
        for(int p=0;p<KP;++p){
#pragma HLS UNROLL
            int idx=m+p;
            int g  = idx / LEN;
            int j  = idx % LEN;
            int j1 = g*(2*LEN)+j;
            int j2 = j1+LEN;
            kdata_t u=src[j1];
            kdata_t t=cbarrett(src[j2], FWD_W[s][idx], FWD_MW[s][idx]);
            dst[j1]=addm(u,t);
            dst[j2]=subm(u,t);
        }
    }
}
template<int LEN>
static void inv_stage_t(const kcoef_t src[KN], kcoef_t dst[KN], int s){
#pragma HLS INLINE off
    INV_BF: for(int m=0; m<KN/2; m+=KP){
#pragma HLS PIPELINE II=1
        for(int p=0;p<KP;++p){
#pragma HLS UNROLL
            int idx=m+p;
            int g  = idx / LEN;
            int j  = idx % LEN;
            int j1 = g*(2*LEN)+j;
            int j2 = j1+LEN;
            kdata_t t=src[j1];
            kdata_t v=src[j2];
            dst[j1]=addm(t,v);
            dst[j2]=cbarrett(subm(v,t), INV_W[s][idx], INV_MW[s][idx]);
        }
    }
}

// fwd NTT: 7 stages, ping-pong between buf and scratch. 7 odd -> result in scratch,
// copied back to buf. Each array gets cyclic-2P banking at the call site.
static void fwd_ntt(kcoef_t buf[KN]){
#pragma HLS INLINE off
    kcoef_t tmp[KN];
#pragma HLS ARRAY_PARTITION variable=tmp cyclic factor=(2*KP) dim=1
    fwd_stage_t<128>(buf,tmp,0); fwd_stage_t<64>(tmp,buf,1); fwd_stage_t<32>(buf,tmp,2);
    fwd_stage_t<16>(tmp,buf,3);  fwd_stage_t<8>(buf,tmp,4);  fwd_stage_t<4>(tmp,buf,5);
    fwd_stage_t<2>(buf,tmp,6);
    // 7 stages: result in tmp -> copy to buf
    FCP: for(int i=0;i<KN;++i){
#pragma HLS PIPELINE II=1
        buf[i]=tmp[i];
    }
}

// Dual forward stage: transform bufA and bufB in the SAME pipelined iteration.
// A's and B's butterflies at index idx are independent (separate arrays/banks),
// so the two run concurrently -> one set of iterations does both transforms.
template<int LEN>
static void fwd_stage2_t(const kcoef_t sA[KN], kcoef_t dA[KN],
                         const kcoef_t sB[KN], kcoef_t dB[KN], int s){
#pragma HLS INLINE off
    FWD_BF2: for(int m=0; m<KN/2; m+=KP){
#pragma HLS PIPELINE II=1
        for(int p=0;p<KP;++p){
#pragma HLS UNROLL
            int idx=m+p;
            int g  = idx / LEN;
            int j  = idx % LEN;
            int j1 = g*(2*LEN)+j;
            int j2 = j1+LEN;
            uint32_t w=FWD_W[s][idx], mw=FWD_MW[s][idx];
            kdata_t uA=sA[j1], tA=cbarrett(sA[j2], w, mw);
            dA[j1]=addm(uA,tA); dA[j2]=subm(uA,tA);
            kdata_t uB=sB[j1], tB=cbarrett(sB[j2], w, mw);
            dB[j1]=addm(uB,tB); dB[j2]=subm(uB,tB);
        }
    }
}
static void fwd_ntt2(kcoef_t A[KN], kcoef_t B[KN]){
#pragma HLS INLINE off
    kcoef_t tA[KN], tB[KN];
#pragma HLS ARRAY_PARTITION variable=tA cyclic factor=(2*KP) dim=1
#pragma HLS ARRAY_PARTITION variable=tB cyclic factor=(2*KP) dim=1
    fwd_stage2_t<128>(A,tA,B,tB,0); fwd_stage2_t<64>(tA,A,tB,B,1);
    fwd_stage2_t<32>(A,tA,B,tB,2);  fwd_stage2_t<16>(tA,A,tB,B,3);
    fwd_stage2_t<8>(A,tA,B,tB,4);   fwd_stage2_t<4>(tA,A,tB,B,5);
    fwd_stage2_t<2>(A,tA,B,tB,6);
    FCP2: for(int i=0;i<KN;++i){
#pragma HLS PIPELINE II=1
        A[i]=tA[i]; B[i]=tB[i];
    }
}
static void inv_ntt(kcoef_t buf[KN]){
#pragma HLS INLINE off
    kcoef_t tmp[KN];
#pragma HLS ARRAY_PARTITION variable=tmp cyclic factor=(2*KP) dim=1
    inv_stage_t<2>(buf,tmp,0);  inv_stage_t<4>(tmp,buf,1);  inv_stage_t<8>(buf,tmp,2);
    inv_stage_t<16>(tmp,buf,3); inv_stage_t<32>(buf,tmp,4); inv_stage_t<64>(tmp,buf,5);
    inv_stage_t<128>(buf,tmp,6);
    // result in tmp; scale by 1/N into buf
    SCALE: for(int i=0;i<KN;++i){
#pragma HLS PIPELINE II=1
        buf[i]=mulm(tmp[i], KNINV);
    }
}
// Kyber 2x2 base multiply (mod x^2 - zeta), P pairs per cycle.
static void basemul(const kcoef_t A[KN], const kcoef_t B[KN], kcoef_t C[KN]){
#pragma HLS INLINE off
    BM: for(int i=0;i<KN/2;i+=KP){
#pragma HLS PIPELINE II=1
        for(int p=0;p<KP;++p){
#pragma HLS UNROLL
            int idx=i+p;
            kdata_t a0=A[2*idx],a1=A[2*idx+1],b0=B[2*idx],b1=B[2*idx+1];
            kdata_t a1b1=mulm(a1,b1);
            C[2*idx]   = addm(mulm(a0,b0), cbarrett(a1b1, BM_W[idx], BM_MW[idx]));
            C[2*idx+1] = addm(mulm(a0,b1), mulm(a1,b0));
        }
    }
}

extern "C" {
void kyber_mult(kdata_t *a, kdata_t *b, kdata_t *c, int batch_size){
#pragma HLS INTERFACE m_axi port=a bundle=gmem0 depth=8192
#pragma HLS INTERFACE m_axi port=b bundle=gmem1 depth=8192
#pragma HLS INTERFACE m_axi port=c bundle=gmem2 depth=8192
#pragma HLS INTERFACE s_axilite port=a bundle=control
#pragma HLS INTERFACE s_axilite port=b bundle=control
#pragma HLS INTERFACE s_axilite port=c bundle=control
#pragma HLS INTERFACE s_axilite port=batch_size bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    BATCH: for(int blk=0; blk<batch_size; ++blk){
#pragma HLS LOOP_TRIPCOUNT min=1 max=16
        kcoef_t A[KN], B[KN], C[KN];
        // cyclic 2P banks so P butterflies never collide (verified collision-free)
#pragma HLS ARRAY_PARTITION variable=A cyclic factor=(2*KP) dim=1
#pragma HLS ARRAY_PARTITION variable=B cyclic factor=(2*KP) dim=1
#pragma HLS ARRAY_PARTITION variable=C cyclic factor=(2*KP) dim=1
        int base=blk*KN;
        // Merged load: a (gmem0) and b (gmem1) are separate AXI ports, so both
        // reads issue in the same cycle -> one 256-cycle loop instead of two.
        LDAB: for(int i=0;i<KN;++i){
#pragma HLS PIPELINE II=1
            A[i]=a[base+i];
            B[i]=b[base+i];
        }
        fwd_ntt2(A,B);
        basemul(A,B,C);
        inv_ntt(C);
        STC: for(int i=0;i<KN;++i){
#pragma HLS PIPELINE II=1
            c[base+i]=C[i];
        }
    }
}
}
