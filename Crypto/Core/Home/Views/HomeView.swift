//
//  HomeView.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-07-30.
//

import SwiftUI

struct HomeView: View {

    @EnvironmentObject private var vm: HomeViewModel
    @State private var showPortfilio: Bool = false // animate right
    @State private var showPortfilioView: Bool = false // new sheet

    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
                .sheet(isPresented: $showPortfilioView) {
                    PortfolioView()
                        .environmentObject(vm)
                }
            VStack {
                homeHeader
                HomeStatsView(showPortfolio: $showPortfilio)
                SearchBarView(searchText: $vm.searchText)
                columnTitles

                if !showPortfilio {
                    allCoinsList
                        .transition(.move(edge: .leading))
                }

                if showPortfilio {
                    portfolioCoinsList
                        .transition(.move(edge: .trailing))
                }
                Spacer(minLength: 0)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
        .preferredColorScheme(.light)
        .environmentObject(dev.homeVM)
    }
}

extension HomeView {
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPortfilio ? "plus" : "info")
                .transaction { transaction in
                    transaction.animation = nil
                }
                .onTapGesture {
                    if showPortfilio {
                        showPortfilioView.toggle()
                    }
                }
                .background(
                    CircleButtonAnimationView(animate: $showPortfilio)
                )
            Spacer()
            Text(showPortfilio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
         