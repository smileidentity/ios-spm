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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614131240.27499961696/UseSmileID.xcframework.zip",
            checksum: "4ae68a017e7ad919d1eb8d601aa0444ce2044ec2c40e42e96873053648b6228e"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614131240.27499961696/UseSmileIDBridge.xcframework.zip",
            checksum: "574f4073a57c56ddc248061511a43b34842d091d8a245d898081e23c1ee5d9a1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614131240.27499961696/UseSmileIDVisionFace.xcframework.zip",
            checksum: "12459121e9456001e5ee88a7ec6b1ce00bc476d793096b82bd45363ab3af8249"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614131240.27499961696/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "a0e27651b98ac8a949993d75a3cdb7ae99464f00fc6c0be2c7ef348cd7df81c7"
        ),
    ]
)
