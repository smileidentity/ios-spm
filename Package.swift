// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDBridge",
            targets: ["UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace", "UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument", "UseSmileIDBridge"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602161415.26832689041/UseSmileID.xcframework.zip",
            checksum: "1ee76a1b621980fb83e19a5681edebf6a3a7a256288b71bcc89b3f5da78da8ef"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602161415.26832689041/UseSmileIDBridge.xcframework.zip",
            checksum: "a06d51b7454d2fdeac3566e9f1e68dd41558abe7ab080270a24ac8b0e62a906c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602161415.26832689041/UseSmileIDVisionFace.xcframework.zip",
            checksum: "87ce49f650f787bc6e3cce396a66db9ebcd272320fafa02b92c92c02ec1c457b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260602161415.26832689041/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0b9f7be3fcd1200d35aa94984a001b56ee3f42576e5b86c4b8419121234a79d9"
        ),
    ]
)
