// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ExecuTorchForPlayground",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "ExecuTorchBridge",
            targets: ["ExecuTorchBridge"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ExecuTorch",
            path: "Frameworks/executorch.xcframework"
        ),
        .target(
            name: "ExecuTorchBridge",
            dependencies: [
                .target(name: "ExecuTorch")
            ],
            path: "Sources/executorch_with_dependencies",
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        )
    ]
)
