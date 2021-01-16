//
//  CoinRowView.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-07-31.
//

import SwiftUI

struct CoinRowView: View {

    let coin: CoinModel
    let showHoldingColumns: Bool

    var body: some View {
        HStack {
            leftColumn
            Spacer()
            if showHoldingColumns {
                centerColumn
            }
            rightColumn
        }
        .font(.subheadline)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        CoinRowView(coin: dev.coin, showHoldingColumns: true)
            .previewLayout(.sizeThatFits)
            CoinRowView(coin: dev.coin, showHoldingColumns: true)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}

extension CoinRowView {
    private var leftColumn: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            CoinImageView(coin: coin)
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading,6)
                .foregroundColor(Color.theme.accent)
        }
    }

    private var