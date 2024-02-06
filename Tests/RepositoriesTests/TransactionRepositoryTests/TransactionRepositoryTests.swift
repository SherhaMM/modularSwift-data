import XCTest
import DataProviders
import DataTestHelpers
import Entities
import TestHelpers
@testable import Repositories

final class TransactionRepositoryTests: XCTestCase {
    var sut: TransactionRepository!
    var dataProvider: MockTransactionProvider!
    
    override func setUp() {
        super.setUp()
        dataProvider = MockTransactionProvider()
        sut = TransactionRepository(transactionProvider: dataProvider)
    }
    
    override func tearDown() {
        sut = nil
        dataProvider = nil
        super.tearDown()
    }
    
    func testGetTransactionSucceded() async throws {
        let returnValue = Fake.apiTransactions
        dataProvider.returnValue = returnValue
        
        let expectedReturnValue = returnValue.map{ TransactionState(object: $0) }
        let result = try await sut.getTransaction()
        XCTAssertEqual(expectedReturnValue, result)
    }
    
    func testGetTransactionFails() async {
        let expectedError = Fake.error
        dataProvider.returnError = expectedError
        
        do {
            let _ = try await sut.getTransaction()
            XCTFail()
        } catch let error {
            XCTAssertEqual(expectedError, error as? TestError)
        }
    }
    
    private struct Fake {
        static let apiTransactions = TransactionObject.fake
        static let error = TestError.testError
    }
}
