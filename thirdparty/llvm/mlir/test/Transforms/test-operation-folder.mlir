// RUN: mlir-opt -test-patterns %s | FileCheck %s

func @foo() -> i32 {
  %c42 = constant 42 : i32

  // The new operation should be present in the output and contain an attribute
  // with value "42" that results from folding.

  // CHECK: "test.op_in_place_fold"(%{{.*}}) {attr = 42 : i32}
  %0 = "test.op_in_place_fold_anchor"(%c42) : (i32) -> (i32)
  return %0 : i32
}
