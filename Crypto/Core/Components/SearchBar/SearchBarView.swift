//
//  SearchBarView.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-08-02.
//

import SwiftUI

struct SearchBarView: View {

    @Binding var searchText: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ? Color.t