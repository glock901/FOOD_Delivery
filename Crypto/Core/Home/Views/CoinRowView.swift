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
           