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
            url: "https://github.com/Alviere/alviere-payments-ios/releases/download/0.9.2/Payments.xcframework.zip",
            checksum: "4e81664212d2fbc743cd1c61d8890cb7e54443c2df0bbfa1b4fb9c5c7374c6cc"
        )
    ]
)