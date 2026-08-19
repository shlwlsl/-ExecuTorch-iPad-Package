// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ExecuTorchForPlayground",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "ExecuTorch",
            targets: ["ExecuTorch"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ExecuTorch",
            path: "Frameworks/executorch.xcframework"
        )
    ]
)
