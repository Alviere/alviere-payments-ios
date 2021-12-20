// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Payments",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "Payments", targets: ["Payments", "AlCore"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alviere/alviere-core-ios.git", from: "0.9.3")
    ],
    targets: [
        .binaryTarget(
            name: "Payments",
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.3/Payments.xcframework.zip",
            checksum: "8e39368d79da0b9ba3827102d76b7b40e009fdd38bd42ac5cdf97aa7fa748e21"
        )
    ]
)
