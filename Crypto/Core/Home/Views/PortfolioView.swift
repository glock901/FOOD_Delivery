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
    @State private var s