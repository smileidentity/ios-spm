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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428154429.25062856519/UseSmileID.xcframework.zip",
            checksum: "6e64f635c1efe669821f9c8f7f453a0d36d7daba0e4933f2df5db18e4a01bf04"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428154429.25062856519/UseSmileIDML.xcframework.zip",
            checksum: "ac06097d7e5902202372cbd662464aca287e6a89e9e81835c50fd6d9ec9572d9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428154429.25062856519/UseSmileIDVisionFace.xcframework.zip",
            checksum: "98d37bd0cdb13fa530d95b456dbb27d353f4a128e7c4da6b59f4bd704851ea7a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260428154429.25062856519/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "95d3d057a70e5c7c2f7a885f2427267f8511431b20089bd976334414ab621c53"
        ),
    ]
)
