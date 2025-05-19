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
            .exact("0.9.28")
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
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.28/PaymentsSDK.xcframework.zip",
            checksum: "8b6fed6e5c50ec117d0b30b4695db1cf6067a599d59e0c82bd12f3fe5b80a10f"
        )
    ]
)
