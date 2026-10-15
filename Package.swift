// swift-tools-version: 5.7
import PackageDescription
let package = Package(
    name: "VirtualStagingUrlTools",
    products: [.library(name: "VirtualStagingUrlTools", targets: ["VirtualStagingUrlTools"])],
    targets: [.target(name: "VirtualStagingUrlTools", path: "swift/Sources/VirtualStagingUrlTools")]
)
