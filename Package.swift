// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ExecuTorchForPlayground",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "executorch",
            targets: ["executorch_with_dependencies"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "executorch",
            path: "Frameworks/executorch.xcframework"
        ),
        .target(
            name: "executorch_with_dependencies",
            dependencies: [
                .target(name: "executorch")
            ],
            path: "Sources/executorch_with_dependencies",
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        )
    ]
)
