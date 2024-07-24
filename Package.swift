// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Movie",
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Movie",
            targets: ["Movie"]),
    ],
    dependencies: [
      // Dependencies declare other packages that this package depends on.
      .package(url: "https://github.com/fepriyadi/CapstoneCore.git", branch: "main"),
      .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.2.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Movie",
            dependencies: [
                .product(name: "Core", package: "CapstoneCore"),
              "Alamofire"
            ]),
        .testTarget(
            name: "MovieTests",
            dependencies: ["Movie"]),
    ]
)
