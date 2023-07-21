// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "MyTools",
    platforms: [.macOS(.v12)],
    dependencies: [
        .package(url: "https://github.com/apple/swift-format", from: "508.0.1"),
    ],
    targets: [.target(name: "MyTools", path: "")]
)
