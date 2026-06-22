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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622091428.27942178440/UseSmileID.xcframework.zip",
            checksum: "bfd9bb7b414986a849df6bcc68787df61dfca2a02291c18687d7268b9607f906"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622091428.27942178440/UseSmileIDBridge.xcframework.zip",
            checksum: "cc32088ecd5c5ed022e9ea03a107c8354248383fcf63ad866af003844fda8507"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622091428.27942178440/UseSmileIDVisionFace.xcframework.zip",
            checksum: "e6990cbd406ed994969516916b6aa1a57f1ffff3bf770138977c19c7ccd7f3f9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622091428.27942178440/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "87a495ae715e9ccb27d8c030212a2381288077225c069e446fa8c37bae0bec62"
        ),
    ]
)
