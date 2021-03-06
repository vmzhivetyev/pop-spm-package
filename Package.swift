// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pop",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "pop",
            targets: ["pop"])
    ],
    targets: [
        .binaryTarget(
            name: "pop",
            path: "pop.xcframework")
    ])
