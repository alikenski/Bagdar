// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Bagdar",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "Bagdar", targets: ["Bagdar"]),
    ],
    targets: [
        .target(name: "Bagdar"),
        .testTarget(name: "BagdarTests", dependencies: ["Bagdar"]),
    ]
)
