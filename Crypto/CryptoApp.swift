
//
//  CryptoApp.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-07-30.
//

import SwiftUI

@main
struct CryptoApp: App {

    @StateObject private var vm = HomeViewModel()

    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
    }

    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}