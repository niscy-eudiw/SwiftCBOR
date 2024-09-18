// swift-tools-version:6.0

import PackageDescription

let package = Package(
	name: "SwiftCBOR",
	platforms: [.macOS(.v10_13), .iOS(.v13)],
	products: [
		.library(name: "SwiftCBOR", targets: ["SwiftCBOR"])
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-collections.git", from: "1.1.3"),
	],
	targets: [
		.target(name: "SwiftCBOR", dependencies: [.product(name: "Collections", package: "swift-collections")],
						path: "Sources", exclude: ["Info.plist"]),
		.testTarget(
			name: "SwiftCBORTests",
			dependencies: ["SwiftCBOR"],
			path: "Tests",
			exclude: ["Info.plist"]
		)
	]
)
