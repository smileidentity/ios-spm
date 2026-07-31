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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731154153.30643711471/UseSmileID.xcframework.zip",
            checksum: "49481873b864dfa5d69011cc825e12dfa9d0d32a6ac5a0dd9062cbb4843ee3a3"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731154153.30643711471/UseSmileIDBridge.xcframework.zip",
            checksum: "08f94d12190bc6b58e7cec09181959c1be97c279ba210f31432d989016785783"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731154153.30643711471/UseSmileIDVisionFace.xcframework.zip",
            checksum: "2850894674355960c0c6d6d6e273aafadb4b518182710f01610169a30a475df5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731154153.30643711471/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3244dee7862b324d49bbabfaa17cdb244c4e8093cd6be34064b36fac0658c374"
        ),
    ]
)
