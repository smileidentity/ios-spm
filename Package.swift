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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511190928.25691431649/UseSmileID.xcframework.zip",
            checksum: "b6016ef7eded3011367cc06a8a5aa3fca67411d7d40110627eed3ee0023874b7"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511190928.25691431649/UseSmileIDML.xcframework.zip",
            checksum: "3f5557900aa2b7415808106a61d925aab341b0a4accc46f5f862acd5be13c6af"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511190928.25691431649/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b983f01b60ca1bc7587097f0e00e804376e71b07283197a7d27be39517ad7d9e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511190928.25691431649/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a124ba7baafe754aedba04a702d5181e53c24d018b4ce16e963f1d0ccc597fac"
        ),
    ]
)
