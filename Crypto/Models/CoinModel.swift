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
 "high_24h": 24605,
 "low_24h": 23733,
 "price_change_24h": 172.12,
 "price_change_percentage_24h": 0.72383,
 "market_cap_change_24h": 3317796129,
 "market_cap_change_percentage_24h": 0.73023,
 "circulating_supply": 19107893,
 "total_supply": 21000000,
 "max_supply": 21000000,
 "ath": 69045,
 "ath_change_percentage": -65.33399,
 "ath_date": "2021-11-10T14:24:11.849Z",
 "atl": 67.81,
 "atl_change_percentage": 35197.77432,
 "atl_date": "2013-07-06T00:00:00.000Z",
 "roi": null,
 "last_updated": "2022-07-30T21:49:43