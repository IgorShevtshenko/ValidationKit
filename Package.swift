// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ValidationKit",
    platforms: [.iOS(.v17), .macOS(.v10_15)],
    products: [
        .library(
            name: "ValidationKit",
            targets: ["ValidationKit"]),
    ],
    targets: [
        .target(
            name: "ValidationKit"),
        .testTarget(
            name: "ValidationKitTests",
            dependencies: ["ValidationKit"]),
    ]
)
