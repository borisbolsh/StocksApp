import Foundation
import Combine

final class ApiService {
    static let ApiKey = "RNLNWWJ6LY6RKFKB"

    func fetchSymbolsPublisher(keywords: String) -> AnyPublisher<SearchResults, Error> {

        let urlString = "https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=\(keywords)&apikey=\(ApiService.ApiKey)"
        let url = URL(string: urlString)!

        return URLSession.shared.dataTaskPublisher(for: url)
                        .map({ $0.data })
                        .decode(type: SearchResults.self, decoder: JSONDecoder())
                        .receive(on: RunLoop.main)
                        .eraseToAnyPublisher()
    }
}












