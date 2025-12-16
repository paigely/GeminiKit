// swift-tools-version: 5.10

import PackageDescription

let package = Package(
	name: "GeminiKit",
	products: [
		.library(name: "GeminiKit", targets: ["GeminiKit"]),
	],
	targets: [
		.target(name: "GeminiKit"),
	]
)
