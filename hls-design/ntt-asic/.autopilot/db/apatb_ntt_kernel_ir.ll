; ModuleID = '/home/sg9109/Documents/hls-design/ntt-asic/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_ntt_kernel_ir(i32* noalias nocapture nonnull "maxi" %x, i32* noalias nocapture nonnull readonly "maxi" %psi_powers, i32* noalias nocapture nonnull readonly "maxi" %twiddles, i32 %q, i32 %q_inv, i32 %batch_size, i32 %n) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 262144)
  %x_copy = bitcast i8* %malloccall to [65536 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 16384)
  %psi_powers_copy = bitcast i8* %malloccall1 to [4096 x i32]*
  %malloccall2 = tail call i8* @malloc(i64 16384)
  %twiddles_copy = bitcast i8* %malloccall2 to [4096 x i32]*
  %0 = bitcast i32* %x to [65536 x i32]*
  %1 = bitcast i32* %psi_powers to [4096 x i32]*
  %2 = bitcast i32* %twiddles to [4096 x i32]*
  call fastcc void @copy_in([65536 x i32]* nonnull %0, [65536 x i32]* %x_copy, [4096 x i32]* nonnull %1, [4096 x i32]* %psi_powers_copy, [4096 x i32]* nonnull %2, [4096 x i32]* %twiddles_copy)
  call void @apatb_ntt_kernel_hw([65536 x i32]* %x_copy, [4096 x i32]* %psi_powers_copy, [4096 x i32]* %twiddles_copy, i32 %q, i32 %q_inv, i32 %batch_size, i32 %n)
  call void @copy_back([65536 x i32]* %0, [65536 x i32]* %x_copy, [4096 x i32]* %1, [4096 x i32]* %psi_powers_copy, [4096 x i32]* %2, [4096 x i32]* %twiddles_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([65536 x i32]* noalias readonly, [65536 x i32]* noalias, [4096 x i32]* noalias readonly, [4096 x i32]* noalias, [4096 x i32]* noalias readonly, [4096 x i32]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a65536i32([65536 x i32]* %1, [65536 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %3, [4096 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %5, [4096 x i32]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a65536i32([65536 x i32]* noalias %dst, [65536 x i32]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [65536 x i32]* %dst, null
  %1 = icmp eq [65536 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a65536i32([65536 x i32]* nonnull %dst, [65536 x i32]* nonnull %src, i64 65536)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a65536i32([65536 x i32]* %dst, [65536 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [65536 x i32]* %src, null
  %1 = icmp eq [65536 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [65536 x i32], [65536 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [65536 x i32], [65536 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* noalias %dst, [4096 x i32]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [4096 x i32]* %dst, null
  %1 = icmp eq [4096 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a4096i32([4096 x i32]* nonnull %dst, [4096 x i32]* nonnull %src, i64 4096)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4096i32([4096 x i32]* %dst, [4096 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [4096 x i32]* %src, null
  %1 = icmp eq [4096 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4096 x i32], [4096 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [4096 x i32], [4096 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([65536 x i32]* noalias, [65536 x i32]* noalias readonly, [4096 x i32]* noalias, [4096 x i32]* noalias readonly, [4096 x i32]* noalias, [4096 x i32]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a65536i32([65536 x i32]* %0, [65536 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %2, [4096 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %4, [4096 x i32]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_ntt_kernel_hw([65536 x i32]*, [4096 x i32]*, [4096 x i32]*, i32, i32, i32, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([65536 x i32]* noalias, [65536 x i32]* noalias readonly, [4096 x i32]* noalias, [4096 x i32]* noalias readonly, [4096 x i32]* noalias, [4096 x i32]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a65536i32([65536 x i32]* %0, [65536 x i32]* %1)
  ret void
}

define void @ntt_kernel_hw_stub_wrapper([65536 x i32]*, [4096 x i32]*, [4096 x i32]*, i32, i32, i32, i32) #5 {
entry:
  call void @copy_out([65536 x i32]* null, [65536 x i32]* %0, [4096 x i32]* null, [4096 x i32]* %1, [4096 x i32]* null, [4096 x i32]* %2)
  %7 = bitcast [65536 x i32]* %0 to i32*
  %8 = bitcast [4096 x i32]* %1 to i32*
  %9 = bitcast [4096 x i32]* %2 to i32*
  call void @ntt_kernel_hw_stub(i32* %7, i32* %8, i32* %9, i32 %3, i32 %4, i32 %5, i32 %6)
  call void @copy_in([65536 x i32]* null, [65536 x i32]* %0, [4096 x i32]* null, [4096 x i32]* %1, [4096 x i32]* null, [4096 x i32]* %2)
  ret void
}

declare void @ntt_kernel_hw_stub(i32*, i32*, i32*, i32, i32, i32, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
