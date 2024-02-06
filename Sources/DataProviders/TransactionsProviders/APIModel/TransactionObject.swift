import Foundation

public struct TransactionObject: Codable {
    public let partnerDisplayName: String
    public let alias: TransactionAliasObject
    public let category: Int
    public let transactionDetail: TransactionDetailObject
}
