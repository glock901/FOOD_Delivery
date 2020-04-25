//
//  CoinImageView.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-07-31.
//

import SwiftUI

struct CoinImageView: View {

    @StateObject var vm: CoinImageViewModel

    init(coin: CoinModel) {
        self._vm = StateObject(wrappedValue: CoinImageViewModel