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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730102608.30534411172/UseSmileID.xcframework.zip",
            checksum: "cba3734a4d23334360debd9020d48050b0085f90c4d5a09536855dd75e2696be"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730102608.30534411172/UseSmileIDBridge.xcframework.zip",
            checksum: "0c9cb41649bbe6c70be5d0053be3dce2f99333016282efb243d0e1dd6c6135fb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730102608.30534411172/UseSmileIDVisionFace.xcframework.zip",
            checksum: "91d3042ebc883b014c083766096d88ab161d17dfb88bdad589fe77f24ca62a2b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260730102608.30534411172/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "02fcd4af55b471cca7dba5d9352db97f466100127b50ad7af05214c03d748a8b"
        ),
    ]
)
