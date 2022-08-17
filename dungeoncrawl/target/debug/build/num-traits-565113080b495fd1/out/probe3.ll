; ModuleID = 'probe3.3a1fbbbh-cgu.0'
source_filename = "probe3.3a1fbbbh-cgu.0"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.7.0"

; core::num::<impl u32>::trailing_ones
; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$13trailing_ones17hab722e41d4f9a321E"(i32 %self) unnamed_addr #0 {
start:
  %_2 = xor i32 %self, -1
; call core::num::<impl u32>::trailing_zeros
  %0 = call i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$14trailing_zeros17h4b0493fc4dc4b293E"(i32 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; core::num::<impl u32>::trailing_zeros
; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$14trailing_zeros17h4b0493fc4dc4b293E"(i32 %self) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %1 = call i32 @llvm.cttz.i32(i32 %self, i1 false)
  store i32 %1, i32* %0, align 4
  %2 = load i32, i32* %0, align 4
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %2
}

; probe3::probe
; Function Attrs: uwtable
define void @_ZN6probe35probe17hd57afd3755f37346E() unnamed_addr #1 {
start:
; call core::num::<impl u32>::trailing_ones
  %_1 = call i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$13trailing_ones17hab722e41d4f9a321E"(i32 1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

attributes #0 = { inlinehint uwtable "frame-pointer"="all" "probe-stack"="__rust_probestack" "target-cpu"="core2" }
attributes #1 = { uwtable "frame-pointer"="all" "probe-stack"="__rust_probestack" "target-cpu"="core2" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
