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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707163054.28882241158/UseSmileID.xcframework.zip",
            checksum: "1f3a934d91255b9a7fdbfe41baa4aa1ab5ae8517e69dbd1e6801af77d6f33bf0"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707163054.28882241158/UseSmileIDBridge.xcframework.zip",
            checksum: "57c13798ae311754cca12704ed1603cddf36e9c78d49460715d0485dfff9fd01"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707163054.28882241158/UseSmileIDVisionFace.xcframework.zip",
            checksum: "8fbd1f2aa9dfa6823b4207090af639e00d057dc43a90fece8ebb97624a1dc529"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707163054.28882241158/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "54716ee2537918b5f64497438dc7a9afb2d86373bab6dcd31044abfb10311017"
        ),
    ]
)
