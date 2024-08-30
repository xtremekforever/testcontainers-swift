// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "Testcontainers",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Testcontainers",
            targets: ["Testcontainers"]),
    ],
    dependencies: [
        .package(url: "https://github.com/xtremekforever/async-http-client.git", branch: "bugfix/swift-6-unix-socket-host"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.6.1"),
    ],
    targets: [
        .target(
            name: "Testcontainers",
            dependencies: [
                .product(name: "AsyncHTTPClient", package: "async-http-client"),
                .product(name: "Logging", package: "swift-log")
            ]),
        .testTarget(
            name: "TestcontainersTests",
            dependencies: ["Testcontainers"]),
    ]
)
