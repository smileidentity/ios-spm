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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260610100015.27268536774/UseSmileID.xcframework.zip",
            checksum: "47ad5d8ebd6f13b6ef2131ef0a85a9fe3119e27c03443124c070a08724b32827"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260610100015.27268536774/UseSmileIDBridge.xcframework.zip",
            checksum: "1e6f78e618870a0b3b1e6a87f1aa25f49fdfd7ce8aead1c0ed975d3955f2dd9d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260610100015.27268536774/UseSmileIDVisionFace.xcframework.zip",
            checksum: "2a1cc817a3986759a75f75dc85bbd5ec60f9ff204b73c86f9c854712a2cf5fb8"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260610100015.27268536774/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f329269e3473dcdb96a9130711b860afe6c93ef7ad257a74843fbff652339fc3"
        ),
    ]
)
