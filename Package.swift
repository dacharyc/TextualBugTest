// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "TextualBugTest",
    platforms: [.macOS(.v15)],
    dependencies: [
        .package(url: "https://github.com/gonzalezreal/textual", from: "0.1.1")
    ],
    targets: [
        .executableTarget(
            name: "TextualBugTest",
            dependencies: [
                .product(name: "Textual", package: "textual")
            ]
        )
    ]
)
