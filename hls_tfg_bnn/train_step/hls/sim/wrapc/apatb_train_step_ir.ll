; ModuleID = 'D:/Proyectos/tfg_hardware_accelerator/hls_tfg_bnn/train_step/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<8, 8, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<8, 8, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }

; Function Attrs: noinline
define void @apatb_train_step_ir(%"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %img_pos, %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %img_neg, i32 %last_sample, i32 %sample_idx, %"struct.ap_uint<4>"* noalias nonnull dereferenceable(1) %leds_port, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="4" %W1_out, [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="1" %W2_out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %img_pos to [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*
  %img_pos_copy_0 = alloca i8, align 512
  %img_pos_copy_1 = alloca i8, align 512
  %img_pos_copy_2 = alloca i8, align 512
  %img_pos_copy_3 = alloca i8, align 512
  %img_pos_copy_4 = alloca i8, align 512
  %img_pos_copy_5 = alloca i8, align 512
  %img_pos_copy_6 = alloca i8, align 512
  %img_pos_copy_7 = alloca i8, align 512
  %1 = bitcast %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %img_neg to [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*
  %img_neg_copy_0 = alloca i8, align 512
  %img_neg_copy_1 = alloca i8, align 512
  %img_neg_copy_2 = alloca i8, align 512
  %img_neg_copy_3 = alloca i8, align 512
  %img_neg_copy_4 = alloca i8, align 512
  %img_neg_copy_5 = alloca i8, align 512
  %img_neg_copy_6 = alloca i8, align 512
  %img_neg_copy_7 = alloca i8, align 512
  %leds_port_copy = alloca i4, align 512
  %2 = bitcast [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %W1_out to [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  %W1_out_copy = alloca [4 x [8 x i8]], align 512
  %3 = bitcast [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %W2_out to [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  %W2_out_copy = alloca [1 x [4 x i8]], align 512
  call void @copy_in([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* nonnull %0, i8* nonnull align 512 %img_pos_copy_0, i8* nonnull align 512 %img_pos_copy_1, i8* nonnull align 512 %img_pos_copy_2, i8* nonnull align 512 %img_pos_copy_3, i8* nonnull align 512 %img_pos_copy_4, i8* nonnull align 512 %img_pos_copy_5, i8* nonnull align 512 %img_pos_copy_6, i8* nonnull align 512 %img_pos_copy_7, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* nonnull %1, i8* nonnull align 512 %img_neg_copy_0, i8* nonnull align 512 %img_neg_copy_1, i8* nonnull align 512 %img_neg_copy_2, i8* nonnull align 512 %img_neg_copy_3, i8* nonnull align 512 %img_neg_copy_4, i8* nonnull align 512 %img_neg_copy_5, i8* nonnull align 512 %img_neg_copy_6, i8* nonnull align 512 %img_neg_copy_7, %"struct.ap_uint<4>"* nonnull %leds_port, i4* nonnull align 512 %leds_port_copy, [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %2, [4 x [8 x i8]]* nonnull align 512 %W1_out_copy, [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %3, [1 x [4 x i8]]* nonnull align 512 %W2_out_copy)
  call void @apatb_train_step_hw(i8* %img_pos_copy_0, i8* %img_pos_copy_1, i8* %img_pos_copy_2, i8* %img_pos_copy_3, i8* %img_pos_copy_4, i8* %img_pos_copy_5, i8* %img_pos_copy_6, i8* %img_pos_copy_7, i8* %img_neg_copy_0, i8* %img_neg_copy_1, i8* %img_neg_copy_2, i8* %img_neg_copy_3, i8* %img_neg_copy_4, i8* %img_neg_copy_5, i8* %img_neg_copy_6, i8* %img_neg_copy_7, i32 %last_sample, i32 %sample_idx, i4* %leds_port_copy, [4 x [8 x i8]]* %W1_out_copy, [1 x [4 x i8]]* %W2_out_copy)
  call void @copy_back([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %0, i8* %img_pos_copy_0, i8* %img_pos_copy_1, i8* %img_pos_copy_2, i8* %img_pos_copy_3, i8* %img_pos_copy_4, i8* %img_pos_copy_5, i8* %img_pos_copy_6, i8* %img_pos_copy_7, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %1, i8* %img_neg_copy_0, i8* %img_neg_copy_1, i8* %img_neg_copy_2, i8* %img_neg_copy_3, i8* %img_neg_copy_4, i8* %img_neg_copy_5, i8* %img_neg_copy_6, i8* %img_neg_copy_7, %"struct.ap_uint<4>"* %leds_port, i4* %leds_port_copy, [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %2, [4 x [8 x i8]]* %W1_out_copy, [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %3, [1 x [4 x i8]]* %W2_out_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, [8 x i8]* readonly %src, i64 %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [8 x i8]* %src, null
  %1 = icmp eq [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [8 x i8], [8 x i8]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
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
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>"(i4* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<4>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_uint<4>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<4>", %"struct.ap_uint<4>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i4* %src.0.0.03 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i4
  store i4 %3, i4* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a4a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias %dst, [4 x [8 x i8]]* noalias readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %1 = icmp eq [4 x [8 x i8]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a4a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %dst, [4 x [8 x i8]]* nonnull %src, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a4a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, [4 x [8 x i8]]* readonly %src, i64 %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [4 x [8 x i8]]* %src, null
  %1 = icmp eq [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]], [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [4 x [8 x i8]], [4 x [8 x i8]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [8 x i8]* %3, i64 8)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1a4struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([1 x [4 x i8]]* noalias align 512 %dst, [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1 x [4 x i8]]* %dst, null
  %1 = icmp eq [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1a4struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([1 x [4 x i8]]* nonnull %dst, [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %src, i64 1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1a4struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([1 x [4 x i8]]* %dst, [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [1 x [4 x i8]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [1 x [4 x i8]], [1 x [4 x i8]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]], [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a4struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([4 x i8]* %3, [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 4)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a4struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([4 x i8]* %dst, [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [4 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"], [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [4 x i8], [4 x i8]* %dst, i64 0, i64 %for.loop.idx8
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
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>.41"(%"struct.ap_uint<4>"* noalias "unpacked"="0" %dst, i4* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_uint<4>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<4>", %"struct.ap_uint<4>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i4* %src to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i4
  store i4 %3, i4* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #3

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.51"(i8* nocapture "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i8* nocapture "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i8* nocapture "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i8* nocapture "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, i8* nocapture "orig.arg.no"="0" "unpacked"="0.0.4" %dst_4, i8* nocapture "orig.arg.no"="0" "unpacked"="0.0.5" %dst_5, i8* nocapture "orig.arg.no"="0" "unpacked"="0.0.6" %dst_6, i8* nocapture "orig.arg.no"="0" "unpacked"="0.0.7" %dst_7, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  switch i64 %for.loop.idx2, label %dst.addr.0.0.06.case.7 [
    i64 0, label %dst.addr.0.0.06.case.0
    i64 1, label %dst.addr.0.0.06.case.1
    i64 2, label %dst.addr.0.0.06.case.2
    i64 3, label %dst.addr.0.0.06.case.3
    i64 4, label %dst.addr.0.0.06.case.4
    i64 5, label %dst.addr.0.0.06.case.5
    i64 6, label %dst.addr.0.0.06.case.6
  ]

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i8 %1, i8* %dst_0, align 1
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  store i8 %1, i8* %dst_1, align 1
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.2:                           ; preds = %for.loop
  store i8 %1, i8* %dst_2, align 1
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.3:                           ; preds = %for.loop
  store i8 %1, i8* %dst_3, align 1
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.4:                           ; preds = %for.loop
  store i8 %1, i8* %dst_4, align 1
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.5:                           ; preds = %for.loop
  store i8 %1, i8* %dst_5, align 1
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.6:                           ; preds = %for.loop
  store i8 %1, i8* %dst_6, align 1
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.7:                           ; preds = %for.loop
  %2 = icmp eq i64 %for.loop.idx2, 7
  call void @llvm.assume(i1 %2)
  store i8 %1, i8* %dst_7, align 1
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.7, %dst.addr.0.0.06.case.6, %dst.addr.0.0.06.case.5, %dst.addr.0.0.06.case.4, %dst.addr.0.0.06.case.3, %dst.addr.0.0.06.case.2, %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.0.0.06.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"(i8* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i8* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i8* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i8* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, i8* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.4" %dst_4, i8* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.5" %dst_5, i8* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.6" %dst_6, i8* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.7" %dst_7, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #2 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.51"(i8* %dst_0, i8* %dst_1, i8* %dst_2, i8* %dst_3, i8* %dst_4, i8* %dst_5, i8* %dst_6, i8* %dst_7, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="0" "unpacked"="0", i8* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0, i8* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_1, i8* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %_2, i8* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %_3, i8* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.4" %_4, i8* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.5" %_5, i8* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.6" %_6, i8* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.7" %_7, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="2" "unpacked"="2", i8* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_01, i8* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_12, i8* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_23, i8* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_34, i8* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_45, i8* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_56, i8* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.6" %_67, i8* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.7" %_78, %"struct.ap_uint<4>"* noalias readonly "orig.arg.no"="4" "unpacked"="4", i4* noalias nocapture align 512 "orig.arg.no"="5" "unpacked"="5.0", [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "orig.arg.no"="6" "unpacked"="6", [4 x [8 x i8]]* noalias align 512 "orig.arg.no"="7" "unpacked"="7", [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "orig.arg.no"="8" "unpacked"="8", [1 x [4 x i8]]* noalias align 512 "orig.arg.no"="9" "unpacked"="9") #4 {
entry:
  call void @"onebyonecpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"(i8* align 512 %_0, i8* align 512 %_1, i8* align 512 %_2, i8* align 512 %_3, i8* align 512 %_4, i8* align 512 %_5, i8* align 512 %_6, i8* align 512 %_7, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %0)
  call void @"onebyonecpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"(i8* align 512 %_01, i8* align 512 %_12, i8* align 512 %_23, i8* align 512 %_34, i8* align 512 %_45, i8* align 512 %_56, i8* align 512 %_67, i8* align 512 %_78, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>"(i4* align 512 %3, %"struct.ap_uint<4>"* %2)
  call fastcc void @"onebyonecpy_hls.p0a4a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.111"([4 x [8 x i8]]* align 512 %5, [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %4)
  call fastcc void @"onebyonecpy_hls.p0a1a4struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([1 x [4 x i8]]* align 512 %7, [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.58"([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i8* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i8* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i8* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i8* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.3" %src_3, i8* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.4" %src_4, i8* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.5" %src_5, i8* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.6" %src_6, i8* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.7" %src_7, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %dst.addr.0.0.06 = getelementptr [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx2, label %src.addr.0.0.05.case.7 [
    i64 0, label %src.addr.0.0.05.case.0
    i64 1, label %src.addr.0.0.05.case.1
    i64 2, label %src.addr.0.0.05.case.2
    i64 3, label %src.addr.0.0.05.case.3
    i64 4, label %src.addr.0.0.05.case.4
    i64 5, label %src.addr.0.0.05.case.5
    i64 6, label %src.addr.0.0.05.case.6
  ]

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %_0 = load i8, i8* %src_0, align 1
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %_1 = load i8, i8* %src_1, align 1
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.2:                           ; preds = %for.loop
  %_2 = load i8, i8* %src_2, align 1
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.3:                           ; preds = %for.loop
  %_3 = load i8, i8* %src_3, align 1
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.4:                           ; preds = %for.loop
  %_4 = load i8, i8* %src_4, align 1
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.5:                           ; preds = %for.loop
  %_5 = load i8, i8* %src_5, align 1
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.6:                           ; preds = %for.loop
  %_6 = load i8, i8* %src_6, align 1
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.7:                           ; preds = %for.loop
  %1 = icmp eq i64 %for.loop.idx2, 7
  call void @llvm.assume(i1 %1)
  %_7 = load i8, i8* %src_7, align 1
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.7, %src.addr.0.0.05.case.6, %src.addr.0.0.05.case.5, %src.addr.0.0.05.case.4, %src.addr.0.0.05.case.3, %src.addr.0.0.05.case.2, %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %2 = phi i8 [ %_0, %src.addr.0.0.05.case.0 ], [ %_1, %src.addr.0.0.05.case.1 ], [ %_2, %src.addr.0.0.05.case.2 ], [ %_3, %src.addr.0.0.05.case.3 ], [ %_4, %src.addr.0.0.05.case.4 ], [ %_5, %src.addr.0.0.05.case.5 ], [ %_6, %src.addr.0.0.05.case.6 ], [ %_7, %src.addr.0.0.05.case.7 ]
  store i8 %2, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.0.0.05.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.55"([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %src_3, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.4" %src_4, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.5" %src_5, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.6" %src_6, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.7" %src_7) #2 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.58"([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, i8* %src_0, i8* %src_1, i8* %src_2, i8* %src_3, i8* %src_4, i8* %src_5, i8* %src_6, i8* %src_7, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_1, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %_2, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %_3, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.4" %_4, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.5" %_5, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.6" %_6, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.7" %_7, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_01, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_12, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_23, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_34, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_45, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_56, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.6" %_67, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.7" %_78, %"struct.ap_uint<4>"* noalias "orig.arg.no"="4" "unpacked"="4", i4* noalias nocapture readonly align 512 "orig.arg.no"="5" "unpacked"="5.0", [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="6" "unpacked"="6", [4 x [8 x i8]]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7", [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="8" "unpacked"="8", [1 x [4 x i8]]* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9") #5 {
entry:
  call void @"onebyonecpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.55"([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %0, i8* align 512 %_0, i8* align 512 %_1, i8* align 512 %_2, i8* align 512 %_3, i8* align 512 %_4, i8* align 512 %_5, i8* align 512 %_6, i8* align 512 %_7)
  call void @"onebyonecpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.55"([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %1, i8* align 512 %_01, i8* align 512 %_12, i8* align 512 %_23, i8* align 512 %_34, i8* align 512 %_45, i8* align 512 %_56, i8* align 512 %_67, i8* align 512 %_78)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>.41"(%"struct.ap_uint<4>"* %2, i4* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a4a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %4, [4 x [8 x i8]]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a1a4struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.96"([1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %6, [1 x [4 x i8]]* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1a4struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.96"([1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias %dst, [1 x [4 x i8]]* noalias readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %1 = icmp eq [1 x [4 x i8]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1a4struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.99"([1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %dst, [1 x [4 x i8]]* nonnull %src, i64 1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1a4struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.99"([1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, [1 x [4 x i8]]* readonly %src, i64 %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [1 x [4 x i8]]* %src, null
  %1 = icmp eq [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]], [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [1 x [4 x i8]], [1 x [4 x i8]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a4struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.102"([4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [4 x i8]* %3, i64 4)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a4struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.102"([4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, [4 x i8]* readonly %src, i64 %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [4 x i8]* %src, null
  %1 = icmp eq [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [4 x i8], [4 x i8]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"], [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
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
define internal fastcc void @"onebyonecpy_hls.p0a4a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.111"([4 x [8 x i8]]* noalias align 512 %dst, [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [4 x [8 x i8]]* %dst, null
  %1 = icmp eq [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a4a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.114"([4 x [8 x i8]]* nonnull %dst, [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* nonnull %src, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a4a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.114"([4 x [8 x i8]]* %dst, [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [4 x [8 x i8]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [4 x [8 x i8]], [4 x [8 x i8]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]], [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.117"([8 x i8]* %3, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 8)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.117"([8 x i8]* %dst, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [8 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [8 x i8], [8 x i8]* %dst, i64 0, i64 %for.loop.idx8
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

declare void @apatb_train_step_hw(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i4*, [4 x [8 x i8]]*, [1 x [4 x i8]]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_1, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %_2, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %_3, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.4" %_4, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.5" %_5, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.6" %_6, i8* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.7" %_7, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_01, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_12, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_23, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_34, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_45, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_56, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.6" %_67, i8* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.7" %_78, %"struct.ap_uint<4>"* noalias "orig.arg.no"="4" "unpacked"="4", i4* noalias nocapture readonly align 512 "orig.arg.no"="5" "unpacked"="5.0", [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="6" "unpacked"="6", [4 x [8 x i8]]* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7", [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* noalias "orig.arg.no"="8" "unpacked"="8", [1 x [4 x i8]]* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9") #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>.41"(%"struct.ap_uint<4>"* %2, i4* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a4a8struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"([4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %4, [4 x [8 x i8]]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a1a4struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>.96"([1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %6, [1 x [4 x i8]]* align 512 %7)
  ret void
}

declare void @train_step_hw_stub(%"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, i32, i32, %"struct.ap_uint<4>"* noalias nonnull, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull, [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull)

define void @train_step_hw_stub_wrapper(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i4*, [4 x [8 x i8]]*, [1 x [4 x i8]]*) #6 {
entry:
  %21 = call i8* @malloc(i64 8)
  %22 = bitcast i8* %21 to [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*
  %23 = call i8* @malloc(i64 8)
  %24 = bitcast i8* %23 to [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*
  %25 = call i8* @malloc(i64 1)
  %26 = bitcast i8* %25 to %"struct.ap_uint<4>"*
  %27 = call i8* @malloc(i64 32)
  %28 = bitcast i8* %27 to [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  %29 = call i8* @malloc(i64 4)
  %30 = bitcast i8* %29 to [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]*
  call void @copy_out([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %22, i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %24, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i8* %13, i8* %14, i8* %15, %"struct.ap_uint<4>"* %26, i4* %18, [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %28, [4 x [8 x i8]]* %19, [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %30, [1 x [4 x i8]]* %20)
  %31 = bitcast [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %22 to %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"*
  %32 = bitcast [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %24 to %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"*
  %33 = bitcast [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %28 to [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*
  %34 = bitcast [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %30 to [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]*
  call void @train_step_hw_stub(%"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %31, %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"* %32, i32 %16, i32 %17, %"struct.ap_uint<4>"* %26, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %33, [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %34)
  call void @copy_in([8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %22, i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]* %24, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i8* %13, i8* %14, i8* %15, %"struct.ap_uint<4>"* %26, i4* %18, [4 x [8 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %28, [4 x [8 x i8]]* %19, [1 x [4 x %"struct.ap_fixed<8, 8, AP_TRN, AP_WRAP, 0>"]]* %30, [1 x [4 x i8]]* %20)
  call void @free(i8* %21)
  call void @free(i8* %23)
  call void @free(i8* %25)
  call void @free(i8* %27)
  call void @free(i8* %29)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { nounwind willreturn }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !19}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0.0", [8 x i8]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18}
!11 = !{!"0.0.0", i8* null}
!12 = !{!"0.0.1", i8* null}
!13 = !{!"0.0.2", i8* null}
!14 = !{!"0.0.3", i8* null}
!15 = !{!"0.0.4", i8* null}
!16 = !{!"0.0.5", i8* null}
!17 = !{!"0.0.6", i8* null}
!18 = !{!"0.0.7", i8* null}
!19 = !{!20, !8, !22}
!20 = !{!21}
!21 = !{!"1.0", [8 x i8]* null}
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30}
!23 = !{!"1.0.0", i8* null}
!24 = !{!"1.0.1", i8* null}
!25 = !{!"1.0.2", i8* null}
!26 = !{!"1.0.3", i8* null}
!27 = !{!"1.0.4", i8* null}
!28 = !{!"1.0.5", i8* null}
!29 = !{!"1.0.6", i8* null}
!30 = !{!"1.0.7", i8* null}
