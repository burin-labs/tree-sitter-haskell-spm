// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TreeSitterHaskell",
    products: [.library(name: "TreeSitterHaskell", targets: ["TreeSitterHaskell"])],
    targets: [
        .target(
            name: "TreeSitterHaskell",
            path: "Sources/TreeSitterHaskell",
            sources: ["src/parser.c", "src/scanner.c"],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("src")]
        )
    ]
)
