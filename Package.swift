// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505105437.25372194220/UseSmileID.xcframework.zip",
            checksum: "3f6479ad12be429e0d61b470b42d12f525f330b857ba7800ce38102d44c98023"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505105437.25372194220/UseSmileIDML.xcframework.zip",
            checksum: "e71e38ecd9b23670f1dae7152808f3ccd9d881b4e2a8e1b23cdd9a8c9fe467cd"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505105437.25372194220/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a23ed9fa38aabfe3757e586ef223293bbe9281da627121419569086a838b279c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260505105437.25372194220/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "9c565e146595d6cca418fe60ef27dc86af2448a33d71a5c05356dbe3e93cee52"
        ),
    ]
)
