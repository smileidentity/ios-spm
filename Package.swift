// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522142316.26293383200/UseSmileID.xcframework.zip",
            checksum: "4c2833d22f5e5e0032d01495720eb18330a528abff563175592a28c758aff039"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522142316.26293383200/UseSmileIDML.xcframework.zip",
            checksum: "03a24a551b43d3bb2b16411457d3ab6357af62e648da6ee75cad07cbb78d3ed4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522142316.26293383200/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b1623c048386a2d48aea56d869151737f108fca020195f65b2d8be7fe2a4ac4e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260522142316.26293383200/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4144930cd7d6813881a35c54cbef08a81ec070e0021fc43bc1c98b3312383dda"
        ),
    ]
)
