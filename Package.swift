// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SwiftOFX",
    products: [
        .library(
            name: "SwiftOFX",
            targets: ["SwiftOFX"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/stevebrun/Reggie.git", from: "0.2.3")
    ],
    targets: [
        .target(
            name: "SwiftOFX",
            dependencies: ["Reggie"],
            path: "Source",
            exclude: ["Info.plist"]
        ),
        .testTarget(
            name: "SwiftOFX Tests",
            dependencies: ["SwiftOFX"],
            path: "Tests",
            exclude: ["LinuxMain.swift", "Info.plist"]
        )
    ]
)
