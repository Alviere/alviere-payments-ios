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
            .exact("0.9.29")
        ),
        .package(
            name: "AlCamera",
            url: "https://github.com/Alviere/alviere-camera-ios.git",
            .exact("1.4.0")
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
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.29/PaymentsSDK.xcframework.zip",
            checksum: "2b28be76bf0304a956a4b365f277ce90223ed1f3ef91957e20bbb232aba40b65"
        )
    ]
)
