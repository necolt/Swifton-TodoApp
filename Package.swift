import PackageDescription

let package = Package(
    name: "Swifton-TodoApp",
    dependencies: [
        .Package(url: "https://github.com/necolt/Swifton.git", versions: Version(0,0,4)..<Version(1,0,0)),
        .Package(url: "https://github.com/necolt/Curassow.git", versions: Version(0,4,0)..<Version(1,0,0)),
    ]
)
