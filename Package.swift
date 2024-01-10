// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "TruvideoSdkVideo",
    products: [
        .library(
            name: "TruvideoSdkVideo",
            targets: ["TruvideoSdkVideoTargets"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "ffmpegkit",
            url: https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/0.0.2/ffmpegkit.xcframework.zip",
