// swift-tools-version: 5.8

///
import PackageDescription

///
let package = Package(
    name: "DistinctType-module",
    products: [
        .library(
            name: "DistinctType-module",
            targets: ["DistinctType-module"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/FoundationToolkit",
            "0.6.0" ..< "0.7.0"
        ),
    ],
    targets: [
        .target(
            name: "DistinctType-module",
            dependencies: [
                "FoundationToolkit",
            ]
        ),
        .testTarget(
            name: "DistinctType-tests",
            dependencies: ["DistinctType-module"]
        ),
    ]
)
