// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Payments",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
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
            .exact("0.9.25")
        ),
        .package(
            name: "AlCamera",
            url: "https://github.com/Alviere/alviere-camera-ios.git",
            .exact("1.1.0")
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
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.25/Payments.xcframework.zip",
            checksum: "6237d711f45bb30f924556dd73a79ac4679d50cbb6361ead8aab13ef69554bed"
        )
    ]
)
