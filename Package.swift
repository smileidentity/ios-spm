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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804194943.30944526708/UseSmileID.xcframework.zip",
            checksum: "b7aaab09c83c05b3bc68335ed15f03f5e87e28fe5e5b96c34d701807be7669a5"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804194943.30944526708/UseSmileIDBridge.xcframework.zip",
            checksum: "73be43bb73383b19d2fd280f805c255ec8ccb2fd667a19b11e3e8b0703045d7d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804194943.30944526708/UseSmileIDVisionFace.xcframework.zip",
            checksum: "81377b02f872830dcdb99d25e8766a917233f804c8218fa4522ba5af153f50d6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260804194943.30944526708/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "0ff6e29780c55f7ac628770c4199fa238ab57262eb721a627c468c6102bc7bbe"
        ),
    ]
)
