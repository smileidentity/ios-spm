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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707093825.28856561751/UseSmileID.xcframework.zip",
            checksum: "1ebb0dc9730c8fbde8d178b61c4aee9622ba2be49039a0cb244cc02fafff1046"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707093825.28856561751/UseSmileIDBridge.xcframework.zip",
            checksum: "7157e2acde7f92a48cf6f305bb07ea263dd80095ca3acca8812f0c1328918f70"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707093825.28856561751/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3f98de3abaf93108c64585ae43cdcebfe4292f9c9c8ffdc26309c3305e29ff62"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707093825.28856561751/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4a7fe1327db55ce0495034cae8c4389a8312e6ebc1c6cd78ae6f9ba157809c0b"
        ),
    ]
)
