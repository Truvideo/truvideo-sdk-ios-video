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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/0.0.3/ffmpegkit.xcframework.zip",
            checksum: "1117f3182a6752e629ccd1a80364733c8004860e66bce3bd95b2d1e96fefd0e0"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/0.0.3/libavcodec.xcframework.zip",
            checksum: "c6a88f85ed7f96f18f3c0e647a75b00c212233dc63b97a70d2972163228c2220"
        ),
        .binaryTarget(
            name: "libavdevice",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/0.0.3/libavdevice.xcframework.zip",
            checksum: "fb0d90f8c5420763eda194a41359466d6702abc5862ddfc4d4d3360711ce9f4d"
        ),
        .binaryTarget(
            name: "libavfilter",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/0.0.3/libavfilter.xcframework.zip",
            checksum: "c516971f70fe4d52765f620622dd0a95afe84190a73ed9c2651697f8edb39576"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/0.0.3/libavformat.xcframework.zip",
            checksum: "b85f0c23190711ec4fec23d0a5a81e065e3fee4098e94bb7075f06a30d19dcb6"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/0.0.3/libavutil.xcframework.zip",
            checksum: "de3264113c1271a075803f6fd62a663c98efc8370e12f7fbc7e1c514bfa11a67"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/0.0.3/libswresample.xcframework.zip",
            checksum: "429835585f1163cec5c06b92513512e019b44dd2f50e84b136b7ab086fa5f4cb"
        ),
        .binaryTarget(
            name: "libswscale",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/0.0.3/libswscale.xcframework.zip",
            checksum: "fc15fd89c8c4c42cffa2a8fa8d996551d7f9b25c93e36d1f1c589ea6a6268690"
        ),
        .binaryTarget(
            name: "TruvideoSdkVideo",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video/releases/download/76.4.1-DEV.91/TruvideoSdkVideo.xcframework.zip",
            checksum: "1a55507bcde601bd892caebd90f8a38b3a8079c3ac2ae0579d50a3101a42a7ac"
        ),
        .target(
            name: "TruvideoSdkVideoTargets",
            dependencies: [
                .target(name: "TruvideoSdkVideo"),
                .target(name: "ffmpegkit"),
                .target(name: "libavcodec"),
                .target(name: "libavdevice"),
                .target(name: "libavfilter"),
                .target(name: "libavformat"),
                .target(name: "libavutil"),
                .target(name: "libswresample"),
                .target(name: "libswscale")               
            ],
            path: "Sources"
        ),
    ]
)
