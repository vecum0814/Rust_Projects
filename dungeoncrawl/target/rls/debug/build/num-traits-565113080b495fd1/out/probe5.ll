; ModuleID = 'probe5.3a1fbbbh-cgu.0'
source_filename = "probe5.3a1fbbbh-cgu.0"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.7.0"

%"std::panic::Location" = type { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }

@alloc0 = private unnamed_addr constant <{ [108 x i8] }> <{ [108 x i8] c"/Users/raylee/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/library/core/src/num/mod.rs" }>, align 1
@alloc1 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [108 x i8] }>, <{ [108 x i8] }>* @alloc0, i32 0, i32 0, i32 0), [16 x i8] c"l\00\00\00\00\00\00\00\A2\02\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; core::num::<impl u32>::div_euclid
; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h8585ff54e77b15dfE"(i32 %self, i32 %rhs) unnamed_addr #0 {
start:
  %_5 = icmp eq i32 %rhs, 0
  %0 = call i1 @llvm.expect.i1(i1 %_5, i1 false)
  br i1 %0, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = udiv i32 %self, %rhs
  ret i32 %1

panic:                                            ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h5b097e4c7cb1b5c0E([0 x i8]* noalias nonnull readonly align 1 bitcast ([25 x i8]* @str.0 to [0 x i8]*), i64 25, %"std::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc1 to %"std::panic::Location"*))
  unreachable
}

; probe5::probe
; Function Attrs: uwtable
define void @_ZN6probe55probe17h068995919d83581fE() unnamed_addr #1 {
start:
; call core::num::<impl u32>::div_euclid
  %_1 = call i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h8585ff54e77b15dfE"(i32 1, i32 1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #2

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h5b097e4c7cb1b5c0E([0 x i8]* noalias nonnull readonly align 1, i64, %"std::panic::Location"* noalias readonly align 8 dereferenceable(24)) unnamed_addr #3

attributes #0 = { inlinehint uwtable "frame-pointer"="all" "probe-stack"="__rust_probestack" "target-cpu"="core2" }
attributes #1 = { uwtable "frame-pointer"="all" "probe-stack"="__rust_probestack" "target-cpu"="core2" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="all" "probe-stack"="__rust_probestack" "target-cpu"="core2" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
