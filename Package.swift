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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622153715.27964656945/UseSmileID.xcframework.zip",
            checksum: "33cb46f6ec9875749b274b8cdb42e950e5f93159ad2d4c4f6a9ddd7313cab9b9"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622153715.27964656945/UseSmileIDBridge.xcframework.zip",
            checksum: "03c8aaa326b0ea699878398d9f8071efc2e2fb3fd2cec7ec48edd7643d4874fb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622153715.27964656945/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ac49a585d267c5003528659137d58dadc4ad1d4751c1aa3a8abda2d0bf594b9e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260622153715.27964656945/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "873d8a158a6da8c08228a36caecaed8d072752b9c8229edc745332a3d6f309be"
        ),
    ]
)
