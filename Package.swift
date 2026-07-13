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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713214407.29287428845/UseSmileID.xcframework.zip",
            checksum: "ecd58d1955c57aa7483a9b273264856a59050928f682dfcc33bb418025d355fd"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713214407.29287428845/UseSmileIDBridge.xcframework.zip",
            checksum: "b0eac7eba16c482a8c66338ae03276a5ad8a4deed76d729ffa734daa5512e1ee"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713214407.29287428845/UseSmileIDVisionFace.xcframework.zip",
            checksum: "577e38053ce166a2381cf2d48f34171743b2ada01e925c152692200b64b81666"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260713214407.29287428845/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "70a43ac2fa8f8bde666080340a488142dc9ea16e30a7db07d148276ff33655dc"
        ),
    ]
)
