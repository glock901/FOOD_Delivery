//
//  StatisticView.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-08-03.
//

import SwiftUI

struct StatisticView: View {
    let stat: StatisticModel
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(stat.title)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
            Text(stat.value)
                .font(.headline)
                .foregroundColor(Color.theme.accent)
            HStack(spacing: 4) {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(
                        Angle(degrees:(stat.percentageChange ?? 0) >= 0 ? 0 : 18