import Foundation

public protocol TransactionProviding {
    func getTransactions() async throws -> [TransactionObject]
}
