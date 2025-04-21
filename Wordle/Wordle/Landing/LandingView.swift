//
//  LandingView.swift
//  Wordle
//
//  Created by Alex Yang on 4/18/25.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("Welcome back.")
                        .font(.title3)
                        .bold()
                    
                    Text("Play with no pre-game ads and access over 10,000 puzzles in our archives.")
                        .multilineTextAlignment(.center)
                    
                    Text("Subscribe to Games")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(8)
                        .border(.black)
                        .padding()
                    
                    HStack {
                        CrosswordView(day: "Monday")
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .principal) {
                        HStack {
                            Image(.nytlogo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            Text("| Games")
                                .font(.headline)
                                .fontWeight(.semibold)
                        }
                    }
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        Image(systemName: "person.fill")
                            .clipShape(Circle())
                            .font(.title3)
                    }
                }
            }
        }
    }
}

#Preview {
    LandingView()
//        .preferredColorScheme(.dark)
}
