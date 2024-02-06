// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Data",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "DataProviders",
            targets: ["DataProviders"]),
        .library(
            name: "Repositories",
            targets: ["Repositories"]),
        .library(
            name: "DataTestHelpers",
            targets: ["DataTestHelpers"]),
    ],
    dependencies: [
        .package(name: "Domain", path: "../Domain"),
        .package(name: "TestHelpers", path: "../TestHelpers")
    ],
    targets: [
        .target(
            name: "DataProviders",
            resources: [
                .process("TransactionsProviders/FileDataProvider/Resources")
            ]),
        .target(
            name: "Repositories",
            dependencies: [
                "DataProviders",
                .product(name: "RepositoryProtocol", package: "Domain"),
                .product(name: "Entities", package: "Domain")
            ]),
        .target(
            name: "DataTestHelpers",
            dependencies: [
                "DataProviders",
            ]),
        .testTarget(
            name: "RepositoriesTests",
            dependencies: [
                "Repositories",
                "DataProviders",
                "DataTestHelpers",
                .product(name: "Entities", package: "Domain"),
                .product(name: "TestHelpers", package: "TestHelpers")
            ]),
    ]
)
