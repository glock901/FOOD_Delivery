
//
//  CoinLogoView.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-08-16.
//

import SwiftUI

struct CoinLogoView: View {

    let coin: CoinModel

    var body: some View {
        VStack {
            CoinImageView(coin: coin)
                .frame(maxWidth: 50, maxHeight: 50)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundColor(Color.theme.accent)
                .lineLimit(1)