import Foundation

public struct TransactionValueObject: Codable {
    public let amount: Int
    public let currency: String
}
