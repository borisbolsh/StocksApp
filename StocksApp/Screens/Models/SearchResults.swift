import Foundation

struct SearchResults: Decodable {
    enum CodingKeys: String, CodingKey {
        case items = "bestMatches"
    }

    let items: [SearchResult]
}

struct SearchResult: Decodable {
    enum CodingKeys: String, CodingKey {
        case symbol = "1. symbol"
        case name = "2. name"
        case type = "3. type"
        case currency = "8. currency"
    }

    let symbol: String
    let name: String
    let type: String
    let currency: String
}
