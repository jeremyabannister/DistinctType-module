// swift-tools-version: 5.10

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
            "0.4.0" ..< "0.5.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/JSONToolkit",
            "0.2.0" ..< "0.3.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/RandomlyGeneratable-package",
            "0.1.0" ..< "0.2.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/XCTestToolkit",
            "0.2.0" ..< "0.3.0"
        ),
    ],
    targets: [
        .target(
            name: "DistinctType-module",
            dependencies: [
                "ExpressionErgonomics",
                .product(name: "RandomlyGeneratable-module", package: "RandomlyGeneratable-package"),
            ]
        ),
        .testTarget(
            name: "DistinctType-tests",
            dependencies: [
                "DistinctType-module",
                "JSONToolkit",
                "XCTestToolkit",
            ]
        ),
    ]
)
