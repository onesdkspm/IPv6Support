// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "IPv6Support",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "IPv6Support",
            targets: ["IPv6SupportWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/onesdkspm/UnityBridge.git", from: "2.0.3"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "IPv6SupportWrapper",
            dependencies: [
                .byName(name: "IPv6Support"),
                .product(name: "UnityBridge", package: "UnityBridge"),
            ],
            path: "IPv6SupportWrapper",
            linkerSettings: [
                // iOS 系统框架
                
                // 系统库
            ]
        ),
        
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "IPv6Support",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/IPv6Support/2.0.3/IPv6Support.xcframework.zip",
            checksum: "3a59c23c185f86b7fbcfc794d687181512ef49ec10b3a7962d0f0746b5796fa3"
        )
    ]
)
