
//
//  MarketDataService.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-08-13.
//

import Foundation
import Combine

class MarketDataService {

    @Published var marketData: MarketDataModel? = nil

    private var marketDataSubscrition: AnyCancellable?

    init() {
        getData()
    }

    private func getData() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }

        marketDataSubscrition = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedGlobalData in
                self?.marketData = returnedGlobalData.data
                self?.marketDataSubscrition?.cancel()
            })
    }
}