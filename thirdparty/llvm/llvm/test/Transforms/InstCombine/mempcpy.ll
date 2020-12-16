; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt -instcombine -S < %s | FileCheck %s

define i8* @memcpy_nonconst_n(i8* %d, i8* nocapture readonly %s, i64 %n) {
; CHECK-LABEL: @memcpy_nonconst_n(
; CHECK-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 [[D:%.*]], i8* align 1 [[S:%.*]], i64 [[N:%.*]], i1 false)
; CHECK-NEXT:    [[TMP1:%.*]] = getelementptr inbounds i8, i8* [[D]], i64 [[N]]
; CHECK-NEXT:    ret i8* [[TMP1]]
;
  %r = tail call i8* @mempcpy(i8* %d, i8* %s, i64 %n)
  ret i8* %r
}

define i8* @memcpy_nonconst_n_copy_attrs(i8* %d, i8* nocapture readonly %s, i64 %n) {
; CHECK-LABEL: @memcpy_nonconst_n_copy_attrs(
; CHECK-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 dereferenceable(16) [[D:%.*]], i8* align 1 [[S:%.*]], i64 [[N:%.*]], i1 false)
; CHECK-NEXT:    [[TMP1:%.*]] = getelementptr inbounds i8, i8* [[D]], i64 [[N]]
; CHECK-NEXT:    ret i8* [[TMP1]]
;
  %r = tail call i8* @mempcpy(i8* dereferenceable(16) %d, i8* %s, i64 %n)
  ret i8* %r
}

define void @memcpy_nonconst_n_unused_retval(i8* %d, i8* nocapture readonly %s, i64 %n) {
; CHECK-LABEL: @memcpy_nonconst_n_unused_retval(
; CHECK-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 [[D:%.*]], i8* align 1 [[S:%.*]], i64 [[N:%.*]], i1 false)
; CHECK-NEXT:    ret void
;
  call i8* @mempcpy(i8* %d, i8* %s, i64 %n)
  ret void
}

define i8* @memcpy_small_const_n(i8* %d, i8* nocapture readonly %s) {
; CHECK-LABEL: @memcpy_small_const_n(
; CHECK-NEXT:    [[TMP1:%.*]] = bitcast i8* [[S:%.*]] to i64*
; CHECK-NEXT:    [[TMP2:%.*]] = bitcast i8* [[D:%.*]] to i64*
; CHECK-NEXT:    [[TMP3:%.*]] = load i64, i64* [[TMP1]], align 1
; CHECK-NEXT:    store i64 [[TMP3]], i64* [[TMP2]], align 1
; CHECK-NEXT:    [[TMP4:%.*]] = getelementptr inbounds i8, i8* [[D]], i64 8
; CHECK-NEXT:    ret i8* [[TMP4]]
;
  %r = tail call i8* @mempcpy(i8* %d, i8* %s, i64 8)
  ret i8* %r
}

define i8* @memcpy_big_const_n(i8* %d, i8* nocapture readonly %s) {
; CHECK-LABEL: @memcpy_big_const_n(
; CHECK-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(1024) [[D:%.*]], i8* nonnull align 1 dereferenceable(1024) [[S:%.*]], i64 1024, i1 false)
; CHECK-NEXT:    [[TMP1:%.*]] = getelementptr inbounds i8, i8* [[D]], i64 1024
; CHECK-NEXT:    ret i8* [[TMP1]]
;
  %r = tail call i8* @mempcpy(i8* %d, i8* %s, i64 1024)
  ret i8* %r
}

declare i8* @mempcpy(i8*, i8* nocapture readonly, i64)
