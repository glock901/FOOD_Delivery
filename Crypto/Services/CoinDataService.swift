//
//  CoinDataService.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-07-31.
//

import Foundation
import Combine

class CoinDataService {

    @Published var allCoins: [CoinModel] = []

    private var coinSubscrition: AnyCancellable?

    init() {
        getcoins()
    }

    private func getcoins() {
        guard let url = URL(string: "https://api.coingecko.c