import Foundation

public struct TransactionListObject : Codable {
    public let transactions : [TransactionObject]

    enum CodingKeys: String, CodingKey {
        case transactions = "items"
    }
}
