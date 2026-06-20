#include "kyber-mult-kernel.h"
#include "kyber-tables.h"
#include <hls_stream.h>


#define KLANES   (2*KP)        // 16 coeffs per beat (matches cyclic-2P banking)
#define KBEATS   (KN/KLANES)   // 16 beats per polynomial

struct kbeat_t { kcoef_t lane[KLANES]; };

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
static inline kdata_t mulm(kdata_t a, kdata_t b){    
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
static void inv_ntt(kcoef_t buf[KN]){
#pragma HLS INLINE off
    kcoef_t tmp[KN];
#pragma HLS ARRAY_PARTITION variable=tmp cyclic factor=(2*KP) dim=1
    inv_stage_t<2>(buf,tmp,0);  inv_stage_t<4>(tmp,buf,1);  inv_stage_t<8>(buf,tmp,2);
    inv_stage_t<16>(tmp,buf,3); inv_stage_t<32>(buf,tmp,4); inv_stage_t<64>(tmp,buf,5);
    inv_stage_t<128>(buf,tmp,6);
    SCALE: for(int i=0;i<KN;++i){
#pragma HLS PIPELINE II=1
        buf[i]=mulm(tmp[i], KNINV);
    }
}
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

static void load_all(const kdata_t* a, const kdata_t* b,
                     hls::stream<kbeat_t>& sA, hls::stream<kbeat_t>& sB,
                     int batch){
#pragma HLS INLINE off
    LD_BLK: for(int blk=0; blk<batch; ++blk){
#pragma HLS LOOP_TRIPCOUNT min=1 max=16
        int base=blk*KN;
        LD: for(int w=0; w<KBEATS; ++w){
#pragma HLS PIPELINE II=1
            kbeat_t ba, bb;
            for(int l=0;l<KLANES;++l){
#pragma HLS UNROLL
                ba.lane[l]=(kcoef_t)a[base + w*KLANES + l];
                bb.lane[l]=(kcoef_t)b[base + w*KLANES + l];
            }
            sA.write(ba); sB.write(bb);
        }
    }
}

static void fwd_all(hls::stream<kbeat_t>& sA_in, hls::stream<kbeat_t>& sB_in,
                    hls::stream<kbeat_t>& sA_out, hls::stream<kbeat_t>& sB_out,
                    int batch){
#pragma HLS INLINE off
    FW_BLK: for(int blk=0; blk<batch; ++blk){
#pragma HLS LOOP_TRIPCOUNT min=1 max=16
        kcoef_t A[KN], B[KN];
#pragma HLS ARRAY_PARTITION variable=A cyclic factor=(2*KP) dim=1
#pragma HLS ARRAY_PARTITION variable=B cyclic factor=(2*KP) dim=1
        FW_RD: for(int w=0; w<KBEATS; ++w){
#pragma HLS PIPELINE II=1
            kbeat_t ba=sA_in.read(), bb=sB_in.read();
            for(int l=0;l<KLANES;++l){
#pragma HLS UNROLL
                A[w*KLANES+l]=ba.lane[l];
                B[w*KLANES+l]=bb.lane[l];
            }
        }
        fwd_ntt2(A,B);
        FW_WR: for(int w=0; w<KBEATS; ++w){
#pragma HLS PIPELINE II=1
            kbeat_t ba, bb;
            for(int l=0;l<KLANES;++l){
#pragma HLS UNROLL
                ba.lane[l]=A[w*KLANES+l];
                bb.lane[l]=B[w*KLANES+l];
            }
            sA_out.write(ba); sB_out.write(bb);
        }
    }
}

static void basemul_all(hls::stream<kbeat_t>& sA_in, hls::stream<kbeat_t>& sB_in,
                        hls::stream<kbeat_t>& sC_out, int batch){
#pragma HLS INLINE off
    BM_BLK: for(int blk=0; blk<batch; ++blk){
#pragma HLS LOOP_TRIPCOUNT min=1 max=16
        kcoef_t A[KN], B[KN], C[KN];
#pragma HLS ARRAY_PARTITION variable=A cyclic factor=(2*KP) dim=1
#pragma HLS ARRAY_PARTITION variable=B cyclic factor=(2*KP) dim=1
#pragma HLS ARRAY_PARTITION variable=C cyclic factor=(2*KP) dim=1
        BM_RD: for(int w=0; w<KBEATS; ++w){
#pragma HLS PIPELINE II=1
            kbeat_t ba=sA_in.read(), bb=sB_in.read();
            for(int l=0;l<KLANES;++l){
#pragma HLS UNROLL
                A[w*KLANES+l]=ba.lane[l];
                B[w*KLANES+l]=bb.lane[l];
            }
        }
        basemul(A,B,C);
        BM_WR: for(int w=0; w<KBEATS; ++w){
#pragma HLS PIPELINE II=1
            kbeat_t bc;
            for(int l=0;l<KLANES;++l){
#pragma HLS UNROLL
                bc.lane[l]=C[w*KLANES+l];
            }
            sC_out.write(bc);
        }
    }
}

static void inv_all(hls::stream<kbeat_t>& sC_in, hls::stream<kbeat_t>& sC_out,
                    int batch){
#pragma HLS INLINE off
    IN_BLK: for(int blk=0; blk<batch; ++blk){
#pragma HLS LOOP_TRIPCOUNT min=1 max=16
        kcoef_t C[KN];
#pragma HLS ARRAY_PARTITION variable=C cyclic factor=(2*KP) dim=1
        IN_RD: for(int w=0; w<KBEATS; ++w){
#pragma HLS PIPELINE II=1
            kbeat_t bc=sC_in.read();
            for(int l=0;l<KLANES;++l){
#pragma HLS UNROLL
                C[w*KLANES+l]=bc.lane[l];
            }
        }
        inv_ntt(C);
        IN_WR: for(int w=0; w<KBEATS; ++w){
#pragma HLS PIPELINE II=1
            kbeat_t bc;
            for(int l=0;l<KLANES;++l){
#pragma HLS UNROLL
                bc.lane[l]=C[w*KLANES+l];
            }
            sC_out.write(bc);
        }
    }
}

static void store_all(hls::stream<kbeat_t>& sC_in, kdata_t* c, int batch){
#pragma HLS INLINE off
    ST_BLK: for(int blk=0; blk<batch; ++blk){
#pragma HLS LOOP_TRIPCOUNT min=1 max=16
        int base=blk*KN;
        ST: for(int w=0; w<KBEATS; ++w){
#pragma HLS PIPELINE II=1
            kbeat_t bc=sC_in.read();
            for(int l=0;l<KLANES;++l){
#pragma HLS UNROLL
                c[base + w*KLANES + l] = (kdata_t)bc.lane[l];
            }
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

#pragma HLS DATAFLOW
    hls::stream<kbeat_t> sA0, sB0;   
    hls::stream<kbeat_t> sA1, sB1;   
    hls::stream<kbeat_t> sC0;        
    hls::stream<kbeat_t> sC1;      
#pragma HLS STREAM variable=sA0 depth=32
#pragma HLS STREAM variable=sB0 depth=32
#pragma HLS STREAM variable=sA1 depth=32
#pragma HLS STREAM variable=sB1 depth=32
#pragma HLS STREAM variable=sC0 depth=32
#pragma HLS STREAM variable=sC1 depth=32

    load_all(a, b, sA0, sB0, batch_size);
    fwd_all(sA0, sB0, sA1, sB1, batch_size);
    basemul_all(sA1, sB1, sC0, batch_size);
    inv_all(sC0, sC1, batch_size);
    store_all(sC1, c, batch_size);
}
}
