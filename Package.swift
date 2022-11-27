// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ToomasKit",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "ToomasKit",
            targets: ["ToomasKit"]
        ),
    ],
    targets: [
        .target(
            name: "ToomasKit",
            plugins: [
                .plugin(name: "ToomasKitPlugin")
            ]
        ),
        .executableTarget(
            name: "CodeGenerator"
        ),
        .plugin(
            name: "ToomasKitPlugin",
            capability: .buildTool(),
            dependencies: ["CodeGenerator"]
        ),
        .testTarget(
            name: "ToomasKitTests",
            dependencies: ["ToomasKit"]
        ),
    ]
)
