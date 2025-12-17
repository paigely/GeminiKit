# GeminiKit
Swift typings for the Google Gemini API

## Usage
In a Swift package:
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

## Features
* Lightweight, no dependencies
* Platform independent
* Full coverage of the content generation endpoint
* Fully documented, every type has comments
* Open source

## License
GPLv3
