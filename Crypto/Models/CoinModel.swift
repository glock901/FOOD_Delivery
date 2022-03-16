//
//  CoinModel.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-07-30.
//

import Foundation
// CoinGecko API
/*
 URL:
 https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h

 JSON Response:

 {
 "id": "bitcoin",
 "symbol": "btc",
 "name": "Bitcoin",
 "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
 "current_price": 23952,
 "market_cap": 457667970156,
 "market_cap_rank": 1,
 "fully_diluted_valuation": 502987292909,
 "total_volume": 60678909713,
 "