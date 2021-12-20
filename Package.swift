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
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.3/Payments.xcframework.zip",
            checksum: "87658e3921168281a12871ad580ad8acda3146daf1287528e6c60d3b590f05c2"
        )
    ]
)
