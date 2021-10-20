// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Payments",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "Payments", targets: ["Payments"])
    ],
    targets: [
        .binaryTarget(
            name: "Payments",
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.1/Payments.xcframework.zip",
            checksum: "16ae02a85fed216e719fe9da425815f0d7c10314ab91b7b2168076e7a6e87900"
        )
    ]
)