//
//  NetworkingManager.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-07-31.
//

import Foundation
import Combine

class NetworkingManager {
    enum NetworkError: LocalizedError {
        case barURLResponse(url: URL)
        case unknown

        var errorDescription: String? {
            switch self {
            case .barURLResponse(url: let url):
                return "[🔥] Bad response from URL: \(url)"
            case .unknown:
                return "[⚠️] Unknown error occured"
            }
        }
    }

    static func download(url: URL) -> AnyPublisher<Data, Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap({try handleUrlResponse(output: $0, url: url)})
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }

    static func handleUrlResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
        guard let restponse = output.response as? HTTPURLResponse,
              restponse.statusCode >= 200 && restponse.statusCode < 300 else {
            throw NetworkError.barURLResponse(url: url)
        }
        return output.data
    }

    static func handleCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}
