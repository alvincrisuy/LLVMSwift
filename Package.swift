// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "LLVM",
  products: [
    .library(
      name: "LLVM",
      targets: ["LLVM"]),
  ],
  dependencies: [
    .package(url: "https://github.com/llvm-swift/cllvm.git", from: "0.0.3"),
    .package(url: "https://github.com/llvm-swift/FileCheck.git", from: "0.0.3"),
  ],
  targets: [
    .target(
      name: "LLVM"),
    .testTarget(
      name: "LLVMTests",
      dependencies: ["LLVM", "FileCheck"]),
  ]
)
