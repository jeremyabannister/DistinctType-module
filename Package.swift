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
            url: "https://github.com/jeremyabannister/ExpressionErgonomics",
            "0.3.0" ..< "0.4.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/RandomlyGeneratable-module",
            "0.1.0" ..< "0.2.0"
        ),
    ],
    targets: [
        .target(
            name: "DistinctType-module",
            dependencies: [
                "ExpressionErgonomics",
                "RandomlyGeneratable-module",
            ]
        ),
        .testTarget(
            name: "DistinctType-tests",
            dependencies: ["DistinctType-module"]
        ),
    ]
)
