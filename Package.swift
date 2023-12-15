// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ColorCalculation",
  platforms: [
    .iOS("15.5"),
    .watchOS(.v6),
    .macOS(.v12),
  ],
  products: [
    .library(
      name: "ColorCalculation",
      targets: [
        "ColorCalculation",
      ]),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "ColorCalculation",
      dependencies: [
      ],
      path: "ColorCalculation/Sources"),
    .testTarget(
      name: "ColorCalculationTests",
      dependencies: [
        "ColorCalculation",
      ],
      path: "ColorCalculationTests"),
  ]
)
