// swift-tools-version: 6.0
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728115743.30356646163/UseSmileID.xcframework.zip",
            checksum: "05070e046ef975771b05d1fa836d005d6f05e630c5cf79084dbe72266e357ef0"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728115743.30356646163/UseSmileIDBridge.xcframework.zip",
            checksum: "5c97c2460f6eefe60c7b74fb6829f612612b1fd793ecf989bf5f64a83ceb08c3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728115743.30356646163/UseSmileIDVisionFace.xcframework.zip",
            checksum: "494826d5a2a8688d8e739dc09f636dbc3de84d35e297c6df24f851153d0a5e60"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260728115743.30356646163/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "34f0784e8ff27fc18924555c6ecb7c51d94fab37f072ae78a046df1fffa52713"
        ),
    ]
)
