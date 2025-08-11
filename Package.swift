// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "AsyncBluetooth",
    platforms: [
        .macOS(.v11),
        .iOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "AsyncBluetooth",
            targets: ["AsyncBluetooth"]
        ),
        .library(
            name: "AsyncBluetoothDebug",
            targets: ["AsyncBluetoothDebug"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/NordicSemiconductor/IOS-CoreBluetooth-Mock", from: "1.0.1"),
    ],
    targets: [
        .target(
            name: "AsyncBluetooth",
            dependencies: [
                .product(name: "CoreBluetoothMock", package: "ios-corebluetooth-mock"),
            ],
            path: "Sources",
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ]
        ),
        .target(
            name: "AsyncBluetoothDebug",
            dependencies: [
                .target(name: "AsyncBluetooth")
            ],
            path: "Debug",
            swiftSettings: [
                .define("DEBUG")
            ]
        ),
        .testTarget(
            name: "AsyncBluetoothDebugTests",
            dependencies: ["AsyncBluetoothDebug"],
            path: "Tests"
        ),
    ],
    swiftLanguageModes: [.v5]
)
