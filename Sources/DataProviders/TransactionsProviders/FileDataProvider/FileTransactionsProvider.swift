import Foundation

final public class FileTransactionsProvider: TransactionProviding {
    public init() {}
    
    public func getTransactions() async throws -> [TransactionObject] {
        try? await Task.sleep(for: .seconds(2))
        if Int.random(in: 0...100) > 80 { throw MockError.mockError("Random Error Occured") }
        let data = getDataFromFile()
        return try JSONDecoder().decode(TransactionListObject.self, from: data!).transactions
    }
    
    private func getDataFromFile() -> Data? {
        let path = Bundle.module.url(forResource: "PBTransactions", withExtension: "json")
        return try? Data(contentsOf: path!)
    }
}

enum MockError: Error {
    case mockError(String)
}

extension MockError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .mockError(let string): return string
        }
    }
}
