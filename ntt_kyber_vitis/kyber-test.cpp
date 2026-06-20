#include <cstdio>
#include <cstdint>
#include <vector>
#include <random>
#include "kyber-mult-kernel.h"
typedef uint32_t u32;
static void schoolbook(const u32*a,const u32*b,u32*c){
    const u32 q=3329;
    for(int i=0;i<256;i++)c[i]=0;
    for(int i=0;i<256;i++)for(int j=0;j<256;j++){
        int k=i+j; u32 v=(u32)(((uint64_t)a[i]*b[j])%q);
        if(k<256)c[k]=(c[k]+v)%q; else c[k-256]=(c[k-256]+q-v)%q;
    }
}
int main(){
    const u32 q=3329; int errs=0;
    std::mt19937 rng(123);
    for(int trial=0;trial<20;trial++){
        std::vector<u32> a(256),b(256),c(256),ref(256);
        for(int i=0;i<256;i++){a[i]=rng()%q;b[i]=rng()%q;}
        kyber_mult(a.data(),b.data(),c.data(),1);
        schoolbook(a.data(),b.data(),ref.data());
        int e=0; for(int i=0;i<256;i++) if(c[i]!=ref[i])e++;
        if(e&&trial<3){ printf("trial %d: %d errs (c[0]=%u ref[0]=%u)\n",trial,e,c[0],ref[0]); }
        errs+=e;
    }
    printf("Kyber spatial mult (P=%d) vs schoolbook, 20 trials: %s (%d errs)\n", KP, errs?"FAIL":"PASS", errs);
    return errs?1:0;
}
