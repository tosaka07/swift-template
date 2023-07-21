// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "app",
  products: [
    .library(
      name: "AppModule",
      type: .static,
      targets: ["AppModule"]),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "AppModule"),
  ]
)
