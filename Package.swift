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
            .exact("0.9.27")
        ),
        .package(
            name: "AlCamera",
            url: "https://github.com/Alviere/alviere-camera-ios.git",
            .exact("1.3.0")
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
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.27/PaymentsSDK.xcframework.zip",
            checksum: "d3a1064c16e19b68b0a6703319b6e9fe44adc32725510ae2b2f8c491a9eb5d5c"
        )
    ]
)
