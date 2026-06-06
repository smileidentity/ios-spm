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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606025003.27050528899/UseSmileID.xcframework.zip",
            checksum: "915d635cc727cdbeeebf04a9c81c908a23a6aa247f9fab10f87f58e00b420480"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606025003.27050528899/UseSmileIDBridge.xcframework.zip",
            checksum: "5e539e567b6e7f60970cf44543d852cbd1a73e001d3e915baffcaf74faa43af7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606025003.27050528899/UseSmileIDVisionFace.xcframework.zip",
            checksum: "185024ca980a8e554a4ddcc018a08a85305236a8ed8f973a71bdc4ee0ce8f3ee"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606025003.27050528899/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "d6afdb850c1f579283b87f95073f5bb3f66337c68bf7f5b58b80e4a517a3b21b"
        ),
    ]
)
