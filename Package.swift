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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605130608.27016595235/UseSmileID.xcframework.zip",
            checksum: "74b7fc3e5be4192695adf42f2bd57efa5cb0f680940fc11b52dd50dafcfdefbd"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605130608.27016595235/UseSmileIDBridge.xcframework.zip",
            checksum: "67acaa64a24c72d31cc9eb59ee2e774db4b43afe1d56f5dd1245523d0f622c98"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605130608.27016595235/UseSmileIDVisionFace.xcframework.zip",
            checksum: "cba0f6c94170c62912cfefa8d2d2fe1939e82a7a52cd19732a3be2ebbb6f8501"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605130608.27016595235/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5d20f480a39b873e2ca7a72886e93eed17c56cbeb4eaa95c35c99bc68fbc64f1"
        ),
    ]
)
