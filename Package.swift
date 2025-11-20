// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "SmileID",
	platforms: [.iOS(.v13)],
	products: [
		.library(
			name: "UseSmileID",
			targets: ["UseSmileID", "SmileIDML"]
		),
		.library(
			name: "SmileIDML",
			targets: ["SmileIDML"]
		),
		.library(
			name: "SmileIDMLMediapipe",
			targets: ["SmileIDMLMediapipe"]
		)
	],
	targets: [
		.binaryTarget(
			name: "UseSmileID",
			url: "https://github.com/smileidentity/ios-demo/releases/download/v1.0.0/UseSmileID.xcframework.zip",
			checksum: "49d6352f715a2ce6421775e602e349109740585efd8b67eaffdf6a1d7275018a"
		),
		.binaryTarget(
			name: "SmileIDML",
			url: "https://github.com/smileidentity/ios-demo/releases/download/v1.0.0/SmileIDML.xcframework.zip",
			checksum: "dda07de80cf6d0e0330e428fafed8cbf7ed9cf3969d19b6ee055f6fcd79d7d89"
		),
		.binaryTarget(
			name: "SmileIDMLMediapipe",
			url: "https://github.com/smileidentity/ios-demo/releases/download/v1.0.0/SmileIDMLMediapipe.xcframework.zip",
			checksum: "4d3fbc9ec330f7251ccab5dc12191219285872ccf530b9735e642b39df8dff02"
		)
	]
)
