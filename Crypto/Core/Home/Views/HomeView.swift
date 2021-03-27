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

    var body: some