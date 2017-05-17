; ModuleID = 'fold_nums.cgu-0.rs'
source_filename = "fold_nums.cgu-0.rs"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%str_slice = type { i8*, i64 }
%"core::fmt::ArgumentV1" = type { %"core::fmt::Void"*, i8 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)* }
%"core::fmt::Void" = type { {} }
%"core::fmt::Formatter" = type { %"core::option::Option<usize>", %"core::option::Option<usize>", { i8*, void (i8*)** }, %"core::slice::Iter<core::fmt::ArgumentV1>", { %"core::fmt::ArgumentV1"*, i64 }, i32, i32, i8 }
%"core::option::Option<usize>" = type { i64, [0 x i64], [1 x i64] }
%"core::slice::Iter<core::fmt::ArgumentV1>" = type { %"core::fmt::ArgumentV1"*, %"core::fmt::ArgumentV1"*, %"core::marker::PhantomData<&core::fmt::ArgumentV1>" }
%"core::marker::PhantomData<&core::fmt::ArgumentV1>" = type {}
%"core::fmt::Arguments" = type { { %str_slice*, i64 }, %"core::option::Option<&[core::fmt::rt::v1::Argument]>", { %"core::fmt::ArgumentV1"*, i64 } }
%"core::option::Option<&[core::fmt::rt::v1::Argument]>" = type { { %"core::fmt::rt::v1::Argument"*, i64 } }
%"core::fmt::rt::v1::Argument" = type { %"core::fmt::rt::v1::Position", %"core::fmt::rt::v1::FormatSpec" }
%"core::fmt::rt::v1::Position" = type { i64, [0 x i64], [1 x i64] }
%"core::fmt::rt::v1::FormatSpec" = type { %"core::fmt::rt::v1::Count", %"core::fmt::rt::v1::Count", i32, i32, i8 }
%"core::fmt::rt::v1::Count" = type { i64, [0 x i64], [1 x i64] }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type {}

@str.0 = internal constant [0 x i8] zeroinitializer
@str.1 = internal constant [1 x i8] c"\0A"
@ref.2 = internal unnamed_addr constant [2 x %str_slice] [%str_slice { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @str.0, i32 0, i32 0), i64 0 }, %str_slice { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str.1, i32 0, i32 0), i64 1 }], align 8

; Function Attrs: uwtable
define internal void @_ZN9fold_nums4main17h334d90ee084cdc0cE() unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
bb5:
  %_17 = alloca [1 x %"core::fmt::ArgumentV1"], align 8
  %_12 = alloca %"core::fmt::Arguments", align 8
  %summed = alloca i32, align 4
  %0 = bitcast i32* %summed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0)
  store i32 10, i32* %summed, align 4
  %1 = bitcast %"core::fmt::Arguments"* %_12 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1)
  %2 = bitcast [1 x %"core::fmt::ArgumentV1"]* %_17 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2)
  %3 = ptrtoint i32* %summed to i64
  %4 = bitcast [1 x %"core::fmt::ArgumentV1"]* %_17 to i64*
  store i64 %3, i64* %4, align 8
  %5 = getelementptr inbounds [1 x %"core::fmt::ArgumentV1"], [1 x %"core::fmt::ArgumentV1"]* %_17, i64 0, i64 0, i32 1
  %6 = bitcast i8 (%"core::fmt::Void"*, %"core::fmt::Formatter"*)** %5 to i64*
  store i64 ptrtoint (i8 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hedd44d3bed3208abE" to i64), i64* %6, align 8
  %7 = getelementptr inbounds [1 x %"core::fmt::ArgumentV1"], [1 x %"core::fmt::ArgumentV1"]* %_17, i64 0, i64 0
  %8 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_12, i64 0, i32 0, i32 0
  store %str_slice* getelementptr inbounds ([2 x %str_slice], [2 x %str_slice]* @ref.2, i64 0, i64 0), %str_slice** %8, align 8, !alias.scope !1, !noalias !4
  %9 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_12, i64 0, i32 0, i32 1
  store i64 2, i64* %9, align 8, !alias.scope !1, !noalias !4
  %_6.sroa.0.0..sroa_idx.i = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_12, i64 0, i32 1, i32 0, i32 0
  store %"core::fmt::rt::v1::Argument"* null, %"core::fmt::rt::v1::Argument"** %_6.sroa.0.0..sroa_idx.i, align 8, !alias.scope !1, !noalias !4
  %10 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_12, i64 0, i32 2, i32 0
  store %"core::fmt::ArgumentV1"* %7, %"core::fmt::ArgumentV1"** %10, align 8, !alias.scope !1, !noalias !4
  %11 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_12, i64 0, i32 2, i32 1
  store i64 1, i64* %11, align 8, !alias.scope !1, !noalias !4
  call void @_ZN3std2io5stdio6_print17hfa7950538481df0bE(%"core::fmt::Arguments"* noalias nocapture nonnull dereferenceable(48) %_12)
  call void @llvm.lifetime.end(i64 48, i8* %1)
  call void @llvm.lifetime.end(i64 16, i8* %2)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %0)
  ret void
}

; Function Attrs: nounwind
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i8 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hedd44d3bed3208abE"(i32* noalias readonly dereferenceable(4), %"core::fmt::Formatter"* dereferenceable(96)) unnamed_addr

declare void @_ZN3std2io5stdio6_print17hfa7950538481df0bE(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48)) unnamed_addr

define i64 @main(i64, i8**) unnamed_addr {
top:
  %2 = tail call i64 @_ZN3std2rt10lang_start17ha5350a26f8f175abE(i8* bitcast (void ()* @_ZN9fold_nums4main17h334d90ee084cdc0cE to i8*), i64 %0, i8** %1)
  ret i64 %2
}

declare i64 @_ZN3std2rt10lang_start17ha5350a26f8f175abE(i8*, i64, i8**) unnamed_addr

attributes #0 = { uwtable }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 1, !"PIE Level", i32 2}
!1 = !{!2}
!2 = distinct !{!2, !3, !"_ZN4core3fmt9Arguments6new_v117h4f67083629896fb8E: argument 0"}
!3 = distinct !{!3, !"_ZN4core3fmt9Arguments6new_v117h4f67083629896fb8E"}
!4 = !{!5}
!5 = distinct !{!5, !3, !"_ZN4core3fmt9Arguments6new_v117h4f67083629896fb8E: argument 1"}
