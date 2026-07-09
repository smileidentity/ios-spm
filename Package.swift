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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709210136.29049954940/UseSmileID.xcframework.zip",
            checksum: "78c114168508f4026a23eae6b76f1ac1628b68f4bb59c38b29dd76ca44a33e73"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709210136.29049954940/UseSmileIDBridge.xcframework.zip",
            checksum: "c2999ca0dba9f4dbf9a33b9df4a45de5c5664a13eb6427f4fe5f45ebb013accc"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709210136.29049954940/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6906b57c3d00e889bfe3efafa3c4e123b64ace9307967ab96fb67c751c3194bf"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260709210136.29049954940/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "503fd4ddf03757b8503258f8afb5518d1cb9344525e5e9a05003207a84bc06cc"
        ),
    ]
)
