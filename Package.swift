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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video/releases/download/0.0.1/TruvideoSdkVideo.xcframework.zip",
            checksum: "dd6e104896b4b5cce482dc5b8405cb9a04dbe7526c7ee45e3b3f07aeb06dfda5"
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
