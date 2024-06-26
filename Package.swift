// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "OverlayContainer",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "OverlayContainer",
            targets: ["OverlayContainer"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble", from: "9.0.0"),
        .package(url: "https://github.com/Quick/Quick", from: "3.1.0"),
    ],
    targets: [
        .target(
            name: "OverlayContainer"
        ),
        .testTarget(
            name: "OverlayContainerTests",
            dependencies: [
                "OverlayContainer",
                "Nimble",
                "Quick"
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
