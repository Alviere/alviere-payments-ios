// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Payments",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "PaymentsSDK", targets: ["PaymentsSDK"])
    ],
    dependencies: [
        .package(name: "AlCore", url: "https://github.com/Alviere/alviere-core-ios.git", from: "0.9.0")
    ],
    targets: [
        .binaryTarget(
            name: "Payments",
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.0/Payments.xcframework.zip",
            checksum: "d12c5cbf12d5e3b108503efa26e7e49d4a14a3b17c63530135bed879b2390a04"
        ),
        .target(
            name: "PaymentsSDK",
            dependencies: ["AlCore", "Payments"],
            path: "PaymentsSDK"
        )
    ]
)