import Foundation
import DataProviders
import TestHelpers

final class MockTransactionProvider: TransactionProviding {
    var returnValue: [TransactionObject] = []
    var returnError: TestError? = nil
    
    func getTransactions() async throws -> [TransactionObject] {
        if let returnError { throw returnError }
        return returnValue
    }
}
