// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "TruvideoSdkVideo",
    products: [
        .library(
            name: "TruvideoSdkVideo",
            targets: ["TruvideoSdkVideoTargets"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "TruvideoSdkVideo",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video/releases/download/0.0.2/TruvideoSdkVideo.xcframework.zip",
            checksum: "9fa5a8d4255b2e860275b715c631ec495f15b8f5882e1240cc737c86438b2d47"
        ),
        .target(
            name: "TruvideoSdkVideoTargets",
            dependencies: [
                .target(name: "TruvideoSdkVideo")
            ],
            path: "Sources"
        )
    ]
)
