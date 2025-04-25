//
//  ContentView.swift
//  Wordle
//
//  Created by Alex Yang on 4/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Games", systemImage: "house") {
                NavigationStack {
                    LandingView()
                }
            }
            Tab("Stats", systemImage: "chart.bar.fill") {
                StatsView()
            }
            Tab("Leaderboard", systemImage: "medal.fill") {
                LeaderboardView()
            }
        }
    }
}

#Preview {
    ContentView()
}
