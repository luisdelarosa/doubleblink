import PackageDescription

let package = Package(
    name: "doubleblink",
    dependencies: [
        .Package(url: "https://github.com/uraimo/SwiftyGPIO.git", majorVersion: 0),
	.Package(url: "https://github.com/IBM-Swift/BlueSignals.git", majorVersion: 0)
    ]
)
