// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Compose",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "Compose",
            targets: ["Compose"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "Compose",
            dependencies: []
        ),
        .testTarget(
            name: "ComposeTests",
            dependencies: ["Compose"]
        )
    ]
)
