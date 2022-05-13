// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Payments",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "Payments",
            type: .static,
            targets: ["PaymentsSDKDeps"]
        )
    ],
    dependencies: [
        .package(
            name: "AlCore",
            url: "https://github.com/Alviere/alviere-core-ios.git",
            .exact("0.9.12")
        ),
        .package(
            name: "AlCamera",
            url: "https://github.com/Alviere/alviere-camera-ios.git",
            .exact("1.0.4")
        )
    ],
    targets: [
        .target(
            name: "PaymentsSDKDeps",
            dependencies: [
                "Payments",
                "AlCore",
                "AlCamera"
            ],
            path: "PaymentsSDKDeps"
        ),
        .binaryTarget(
            name: "Payments",
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.12/Payments.xcframework.zip",
            checksum: "6ce064d6c1ac548261f63e8467ed6f09e3b468baa95d658020a8fb6e1a4e8c3f"
        )
    ]
)
