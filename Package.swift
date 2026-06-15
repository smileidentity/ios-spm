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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615074828.27531765797/UseSmileID.xcframework.zip",
            checksum: "9232d1bfd84b80e07b51b4e92aab4b2cba159753e3d1005cb9d24c445fc1b102"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615074828.27531765797/UseSmileIDBridge.xcframework.zip",
            checksum: "e9898509872425d6ff780ade2b47bc2ba29b231b0160f465bf85330420e61af5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615074828.27531765797/UseSmileIDVisionFace.xcframework.zip",
            checksum: "20e14fa90dc5aefd059d8116d49fcbd09707aeca69996fd6a7f6847f7c1e2033"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260615074828.27531765797/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "6689c59bed86190a43d048b58746fb0ae6b3f587c587ae2e2ffa1f9d000fbf29"
        ),
    ]
)
