// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "HelloDanCLI",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.3.0"),
    ],
    targets: [
        .executableTarget(
            name: "HelloDanCLI",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ],
            path: "HelloDanCLI"
        ),
    ]
)
