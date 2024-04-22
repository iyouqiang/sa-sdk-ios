// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SensorsAnalyticsSDK",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "SensorsAnalyticsSDK",
            targets: ["SensorsAnalyticsSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SensorsAnalyticsSDK",
            dependencies: [],
            path: "Sources",
            sources: ["SensorsAnalyticsSDK/"],
            resources: [
                .copy("Resources/PrivacyInfo.xcprivacy"),
            ],
            publicHeadersPath: "SensorsAnalyticsSDK/",
            linkerSettings: [
                            .linkedFramework("Foundation"),
                            .linkedFramework("UIKit")
                        ]
        )
    ]
)
