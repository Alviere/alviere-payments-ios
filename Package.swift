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
            .exact("0.9.9")
        )
    ],
    targets: [
        .target(
            name: "PaymentsSDKDeps",
            dependencies: [
                "Payments",
                "AlCore"
            ],
            path: "PaymentsSDKDeps"
        ),
        .binaryTarget(
            name: "Payments",
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.9/Payments.xcframework.zip",
            checksum: "c24c602d733df25b82a9c0dd552ddc7c7f873d8a4dc40eb602c20bae53c38d37"
        )
    ]
)
