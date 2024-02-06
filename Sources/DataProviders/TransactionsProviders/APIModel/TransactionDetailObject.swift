import Foundation

public struct TransactionDetailObject: Codable {
    public let description: String?
    public let bookingDate: Date?
    public let value: TransactionValueObject
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        value = try values.decode(TransactionValueObject.self, forKey: .value)
        let dateString = try values.decode(String.self, forKey: .bookingDate)
        bookingDate = DateDecoderHelper.transactionDateFormatter.date(from: dateString)
    }
}
