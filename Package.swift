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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706090736.28780411258/UseSmileID.xcframework.zip",
            checksum: "0ad4d110dc055fa0ed435d186e46170df2da060e9b634bba146744f6fab73252"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706090736.28780411258/UseSmileIDBridge.xcframework.zip",
            checksum: "2848e0dcd7af00434675f11831f92f09008676931204cadb94b8038291e5eeb7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706090736.28780411258/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5b3af4841ae5901842c233876caaf2c2fe5ee35a2bfab3ae758098a9ac204716"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706090736.28780411258/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2ccaf14df4b521999edd4bffc40239584078ca583197b6c14db25636aaafb848"
        ),
    ]
)
