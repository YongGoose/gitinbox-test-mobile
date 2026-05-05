// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GitInboxTestMobile",
    platforms: [
        .macOS(.v13),
        .iOS(.v16)
    ],
    products: [
        .executable(name: "gitinbox-test-mobile", targets: ["GitInboxTestMobile"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", exact: "1.2.0"),
        .package(url: "https://github.com/apple/swift-log.git", exact: "1.4.4"),
        .package(url: "https://github.com/apple/swift-collections.git", exact: "1.0.4"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", exact: "5.12.0")
    ],
    targets: [
        .executableTarget(
            name: "GitInboxTestMobile",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "Logging", package: "swift-log"),
                .product(name: "Collections", package: "swift-collections"),
                "Alamofire"
            ]
        )
    ]
)
