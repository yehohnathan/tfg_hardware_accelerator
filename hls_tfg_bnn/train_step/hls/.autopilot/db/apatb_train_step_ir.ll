; ModuleID = 'D:/Proyectos/tfg_hardware_accelerator/hls_tfg_bnn/train_step/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<8, 8, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<8, 8, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_train_step_ir(i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %img_pos, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %img_neg, i32 %sample_idx, [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="32" "maxi" %W1, [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="10" "maxi" %W2) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %img_pos to [64 x i8]*
  %img_pos_copy = alloca [64 x i8], align 512
  %1 = bitcast i8* %img_neg to [64 x i8]*
  %img_neg_copy = alloca [64 x i8], align 512
  %2 = bitcast [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %W1 to [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  %W1_copy = alloca [32 x [64 x i8]], align 512
  %3 = bitcast [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %W2 to [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  %W2_copy = alloca [10 x [32 x i8]], align 512
  call fastcc void @copy_in([64 x i8]* nonnull %0, [64 x i8]* nonnull align 512 %img_pos_copy, [64 x i8]* nonnull %1, [64 x i8]* nonnull align 512 %img_neg_copy, [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %2, [32 x [64 x i8]]* nonnull align 512 %W1_copy, [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %3, [10 x [32 x i8]]* nonnull align 512 %W2_copy)
  call void @apatb_train_step_hw([64 x i8]* %img_pos_copy, [64 x i8]* %img_neg_copy, i32 %sample_idx, [32 x [64 x i8]]* %W1_copy, [10 x [32 x i8]]* %W2_copy)
  call void @copy_back([64 x i8]* %0, [64 x i8]* %img_pos_copy, [64 x i8]* %1, [64 x i8]* %img_neg_copy, [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %2, [32 x [64 x i8]]* %W1_copy, [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %3, [10 x [32 x i8]]* %W2_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([64 x i8]* noalias readonly, [64 x i8]* noalias align 512, [64 x i8]* noalias readonly, [64 x i8]* noalias align 512, [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [32 x [64 x i8]]* noalias align 512, [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [10 x [32 x i8]]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64i8([64 x i8]* align 512 %1, [64 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a64i8([64 x i8]* align 512 %3, [64 x i8]* %2)
  call fastcc void @"onebyonecpy_hls.p0a32a64struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.73"([32 x [64 x i8]]* align 512 %5, [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %4)
  call fastcc void @"onebyonecpy_hls.p0a10a32struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([10 x [32 x i8]]* align 512 %7, [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a64i8([64 x i8]* noalias align 512 %dst, [64 x i8]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x i8]* %dst, null
  %1 = icmp eq [64 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a64i8([64 x i8]* nonnull %dst, [64 x i8]* nonnull %src, i64 64)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a64i8([64 x i8]* %dst, [64 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [64 x i8]* %src, null
  %1 = icmp eq [64 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [64 x i8], [64 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [64 x i8], [64 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a32a64struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias %dst, [32 x [64 x i8]]* noalias readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %1 = icmp eq [32 x [64 x i8]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a32a64struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %dst, [32 x [64 x i8]]* nonnull %src, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a32a64struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, [32 x [64 x i8]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [32 x [64 x i8]]* %src, null
  %1 = icmp eq [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]], [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [32 x [64 x i8]], [32 x [64 x i8]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a64struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [64 x i8]* %3, i64 64)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a64struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, [64 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [64 x i8]* %src, null
  %1 = icmp eq [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [64 x i8], [64 x i8]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"], [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a10a32struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([10 x [32 x i8]]* noalias align 512 %dst, [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [10 x [32 x i8]]* %dst, null
  %1 = icmp eq [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a10a32struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([10 x [32 x i8]]* nonnull %dst, [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %src, i64 10)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a10a32struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([10 x [32 x i8]]* %dst, [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [10 x [32 x i8]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [10 x [32 x i8]], [10 x [32 x i8]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]], [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a32struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([32 x i8]* %3, [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 32)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a32struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([32 x i8]* %dst, [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [32 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"], [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [32 x i8], [32 x i8]* %dst, i64 0, i64 %for.loop.idx8
  %4 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %4, i8* %3, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([64 x i8]* noalias, [64 x i8]* noalias readonly align 512, [64 x i8]* noalias, [64 x i8]* noalias readonly align 512, [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias, [32 x [64 x i8]]* noalias readonly align 512, [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias, [10 x [32 x i8]]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64i8([64 x i8]* %0, [64 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a64i8([64 x i8]* %2, [64 x i8]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a32a64struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %4, [32 x [64 x i8]]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a10a32struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.59"([10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %6, [10 x [32 x i8]]* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a10a32struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.59"([10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias %dst, [10 x [32 x i8]]* noalias readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %1 = icmp eq [10 x [32 x i8]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a10a32struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.62"([10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %dst, [10 x [32 x i8]]* nonnull %src, i64 10)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a10a32struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.62"([10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, [10 x [32 x i8]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [10 x [32 x i8]]* %src, null
  %1 = icmp eq [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]], [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [10 x [32 x i8]], [10 x [32 x i8]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a32struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.65"([32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [32 x i8]* %3, i64 32)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a32struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.65"([32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, [32 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [32 x i8]* %src, null
  %1 = icmp eq [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [32 x i8], [32 x i8]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"], [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a32a64struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.73"([32 x [64 x i8]]* noalias align 512 %dst, [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [32 x [64 x i8]]* %dst, null
  %1 = icmp eq [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a32a64struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.76"([32 x [64 x i8]]* nonnull %dst, [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %src, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a32a64struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.76"([32 x [64 x i8]]* %dst, [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [32 x [64 x i8]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [32 x [64 x i8]], [32 x [64 x i8]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]], [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a64struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.79"([64 x i8]* %3, [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 64)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a64struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.79"([64 x i8]* %dst, [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [64 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"], [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [64 x i8], [64 x i8]* %dst, i64 0, i64 %for.loop.idx8
  %4 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %4, i8* %3, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_train_step_hw([64 x i8]*, [64 x i8]*, i32, [32 x [64 x i8]]*, [10 x [32 x i8]]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([64 x i8]* noalias, [64 x i8]* noalias readonly align 512, [64 x i8]* noalias, [64 x i8]* noalias readonly align 512, [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias, [32 x [64 x i8]]* noalias readonly align 512, [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias, [10 x [32 x i8]]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a32a64struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %4, [32 x [64 x i8]]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a10a32struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.59"([10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %6, [10 x [32 x i8]]* align 512 %7)
  ret void
}

declare void @train_step_hw_stub(i8* noalias nocapture nonnull readonly, i8* noalias nocapture nonnull readonly, i32, [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull, [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull)

define void @train_step_hw_stub_wrapper([64 x i8]*, [64 x i8]*, i32, [32 x [64 x i8]]*, [10 x [32 x i8]]*) #5 {
entry:
  %5 = call i8* @malloc(i64 2048)
  %6 = bitcast i8* %5 to [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  %7 = call i8* @malloc(i64 320)
  %8 = bitcast i8* %7 to [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  call void @copy_out([64 x i8]* null, [64 x i8]* %0, [64 x i8]* null, [64 x i8]* %1, [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %6, [32 x [64 x i8]]* %3, [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %8, [10 x [32 x i8]]* %4)
  %9 = bitcast [64 x i8]* %0 to i8*
  %10 = bitcast [64 x i8]* %1 to i8*
  %11 = bitcast [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %6 to [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*
  %12 = bitcast [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %8 to [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*
  call void @train_step_hw_stub(i8* %9, i8* %10, i32 %2, [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %11, [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %12)
  call void @copy_in([64 x i8]* null, [64 x i8]* %0, [64 x i8]* null, [64 x i8]* %1, [32 x [64 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %6, [32 x [64 x i8]]* %3, [10 x [32 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %8, [10 x [32 x i8]]* %4)
  call void @free(i8* %5)
  call void @free(i8* %7)
  ret void
}

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
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
