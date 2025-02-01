// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftAzureTTS",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .visionOS(.v1),
    ],
    products: [
        .library(
            name: "SwiftAzureTTS",
            targets: ["SwiftAzureTTS"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftAzureTTS"
        ),
    ]
)
