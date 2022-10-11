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
            .exact("0.9.18")
        ),
        .package(
            name: "AlCamera",
            url: "https://github.com/Alviere/alviere-camera-ios.git",
            .exact("1.0.5")
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
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.18/Payments.xcframework.zip",
            checksum: "b55c8e5ef1cc6b6ee083b3035f9cab6aebbfb06999f52d0490d025ce646ad72b"
        )
    ]
)
