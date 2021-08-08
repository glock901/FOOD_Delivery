//
//  PortfolioView.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-08-16.
//

import SwiftUI

struct PortfolioView: View {

    @Environment(\.dismiss) var dismiss
    @EnvironmentObject private var vm: HomeViewModel
    @State private var selectedCoin: CoinModel? = nil
    @State private var quantityText: String = ""
    @State private var animate = false
    @State private var showCheckmark = false

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    SearchBarView(searchText: $vm.searchText)
                    coinLogogList

                    if selectedCoin != n