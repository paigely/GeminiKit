# GeminiKit
Swift typings for the gemini API

## Usage
```swift
// swift-tools-version: 5.10

import PackageDescription

let package = Package(
	name: "Package",
	dependencies: [
		.package(url: "https://codeberg.org/paige/GeminiKit.git", exact: "1.0.0")
	],
	targets: [
		.executableTarget(
			name: "Package",
			dependencies: ["GeminiKit"]
		),
	]
)
```

## License
GPLv3
