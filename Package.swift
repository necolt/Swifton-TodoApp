import PackageDescription

let package = Package(
    name: "Swifton-TodoApp",
    dependencies: [
        .Package(url: "https://github.com/necolt/Swifton.git", versions: Version(0,0,9)..<Version(1,0,0)),
        .Package(url: "https://github.com/VeniceX/HTTPServer.git", versions: Version(0,5,0)..<Version(1,0,0))
    ]
)
