//import Foundation
//
// MARK: Add network layer and use instead of the FileTransactionsProvider when endpoint will be ready
//
//struct NetworkTransactionsProvider: TransactionProviding {
//    private let apiService: APIServicing
    
//    init(apiService: ApiClient) {
//        self.apiService = apiService
//    }
    
//    func getTransactions() async throws -> [TransactionObject] {
//        apiService.fetch()
//    }
//}
