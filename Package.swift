// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Nifty",
    products: [
        // Define products here. If Nifty is a library, you might have something like:
        .library(
            name: "Nifty",
            targets: ["Nifty"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "version"),
        .package(url: "https://github.com/nifty-swift/Nifty-libs.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Nifty",
            dependencies: [],
            exclude: ["Tests/KnownResults"]),
        .testTarget(
            name: "NiftyTests",
            dependencies: ["Nifty"]),
    ]
)
