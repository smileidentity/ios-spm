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
            name: "UseSmileIDMLMediapipe",
            targets: ["UseSmileIDMLMediapipe"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v1.0.0/UseSmileID.xcframework.zip",
            checksum: "df7ab6aded3bcad229bf66f6085033bad2cb175c3f52d3be7b716142417fb21a"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v1.0.0/UseSmileIDML.xcframework.zip",
            checksum: "82429b1ed52e3a983f2a1de4e2d6830c8109083c489160844ca7a32351acec0e"
        ),
        .binaryTarget(
            name: "UseSmileIDMLMediapipe",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v1.0.0/UseSmileIDMediapipe.xcframework.zip",
            checksum: "674600f10fe70d20ac3495a336e395dbbaecd0c95a59bbcfffb0a799d8b8ce01"
        ),
    ]
)
