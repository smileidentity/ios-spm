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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702154454.28602905127/UseSmileID.xcframework.zip",
            checksum: "228da54512f71bbb6cf3209fe09250a797412de7b6cb8550943d0dd1f48ce780"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702154454.28602905127/UseSmileIDBridge.xcframework.zip",
            checksum: "220e5434bfd62e51a06593f872719f02c9a6e851488f7e566f1a32cd7bcd0a16"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702154454.28602905127/UseSmileIDVisionFace.xcframework.zip",
            checksum: "da45481c1f2188f3c00ecb80331c3c28745a0bf7530ae66eaf90bb61ef4f2197"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702154454.28602905127/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "47e79c9726636f7be615becacda90528e770d528522a2087b442a46014b80de2"
        ),
    ]
)
