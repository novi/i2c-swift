import PackageDescription


let package = Package(
    name: "I2C",
    targets: [
                Target(name: "I2C", dependencies: ["CUSB"]),
                Target(name: "CUSB")
                 ],
    dependencies: [
        .Package(url: "https://www.github.com/sixtyfiveford/Ci2c.swift.git", majorVersion: 1),
    ],
    exclude: ["Xcode"]
)
