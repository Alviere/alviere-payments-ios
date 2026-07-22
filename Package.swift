// swift-tools-version:5.5
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
            .exact("0.9.32")
        ),
        .package(
            name: "AlCamera",
            url: "https://github.com/Alviere/alviere-camera-ios.git",
            .exact("1.6.0")
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
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.32/PaymentsSDK.xcframework.zip",
            checksum: "c576de6f7400aa54ba3d8221a02df32c7a13c5d91757231e0f7765db14221658"
        )
    ]
)
