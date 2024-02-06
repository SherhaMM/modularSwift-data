import Foundation
import RepositoryProtocol
import Entities
import DataProviders

final public class TransactionRepository: TransactionRepositing {
    private let transactionProvider: TransactionProviding
    
    public init(transactionProvider: TransactionProviding) {
        self.transactionProvider = transactionProvider
    }
    
    public func getTransaction() async throws -> [TransactionState] {
        try await transactionProvider.getTransactions().map(TransactionState.init(object:))
    }
}

extension TransactionState {
    public init(object: TransactionObject) {
        let value = TransactionValueState(
            value: object.transactionDetail.value.amount,
            currencyCode: object.transactionDetail.value.currency)
        
        self.init(
            id: object.alias.reference,
            partnerDisplayName: object.partnerDisplayName,
            category: object.category,
            description: object.transactionDetail.description,
            bookingDate: object.transactionDetail.bookingDate,
            value: value)
    }
}

