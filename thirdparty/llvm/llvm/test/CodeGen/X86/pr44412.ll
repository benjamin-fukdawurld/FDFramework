; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
;RUN: llc < %s -mtriple=x86_64-unknown-linux-gnu | FileCheck %s

define void @bar(i32 %0, i32 %1) nounwind {
; CHECK-LABEL: bar:
; CHECK:       # %bb.0:
; CHECK-NEXT:    pushq %rbx
; CHECK-NEXT:    testl %edi, %edi
; CHECK-NEXT:    je .LBB0_3
; CHECK-NEXT:  # %bb.1: # %.preheader
; CHECK-NEXT:    movl %edi, %ebx
; CHECK-NEXT:    decl %ebx
; CHECK-NEXT:    .p2align 4, 0x90
; CHECK-NEXT:  .LBB0_2: # =>This Inner Loop Header: Depth=1
; CHECK-NEXT:    movl %ebx, %edi
; CHECK-NEXT:    callq foo
; CHECK-NEXT:    addl $-1, %ebx
; CHECK-NEXT:    jb .LBB0_2
; CHECK-NEXT:  .LBB0_3:
; CHECK-NEXT:    popq %rbx
; CHECK-NEXT:    retq
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %6, %4 ], [ %0, %2 ]
  %6 = add nsw i32 %5, -1
  tail call void @foo(i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %4

8:                                                ; preds = %4, %2
  ret void
}

define void @baz(i32 %0, i32 %1) nounwind {
; CHECK-LABEL: baz:
; CHECK:       # %bb.0:
; CHECK-NEXT:    pushq %rbx
; CHECK-NEXT:    testl %edi, %edi
; CHECK-NEXT:    je .LBB1_3
; CHECK-NEXT:  # %bb.1: # %.preheader
; CHECK-NEXT:    movl %edi, %ebx
; CHECK-NEXT:    decl %ebx
; CHECK-NEXT:    .p2align 4, 0x90
; CHECK-NEXT:  .LBB1_2: # =>This Inner Loop Header: Depth=1
; CHECK-NEXT:    movl %ebx, %edi
; CHECK-NEXT:    callq foo
; CHECK-NEXT:    addl $-1, %ebx
; CHECK-NEXT:    jae .LBB1_2
; CHECK-NEXT:  .LBB1_3:
; CHECK-NEXT:    popq %rbx
; CHECK-NEXT:    retq
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %6, %4 ], [ %0, %2 ]
  %6 = add nsw i32 %5, -1
  tail call void @foo(i32 %6)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %4

8:                                                ; preds = %4, %2
  ret void
}

declare void @foo(i32)
