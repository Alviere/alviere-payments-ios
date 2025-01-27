// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "PaymentsSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "PaymentsSDK",
            type: .static,
            targets: ["PaymentsSDKDeps"]
        )
    ],
    dependencies: [
        .package(
            name: "AlCore",
            url: "https://github.com/Alviere/alviere-core-ios.git",
            .exact("0.9.26")
        ),
        .package(
            name: "AlCamera",
            url: "https://github.com/Alviere/alviere-camera-ios.git",
            .exact("1.2.0")
        )
    ],
    targets: [
        .target(
            name: "PaymentsSDKDeps",
            dependencies: [
                "PaymentsSDK",
                "AlCore",
                "AlCamera"
            ],
            path: "PaymentsSDKDeps"
        ),
        .binaryTarget(
            name: "PaymentsSDK",
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.26/PaymentsSDK.xcframework.zip",
            checksum: "490721b6c41053452845e30fc4a71b2a80431671b2b3be212d30e2d8928f29ce"
        )
    ]
)
