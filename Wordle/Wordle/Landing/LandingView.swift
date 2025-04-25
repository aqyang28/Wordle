//
//  LandingView.swift
//  Wordle
//
//  Created by Alex Yang on 4/18/25.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 8) {
                Text("Welcome back.")
                    .font(.title3)
                    .bold()
                
                Text("Play with no pre-game ads and access over 10,000 puzzles in our archives.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                
                Text("Subscribe to Games")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(8)
                    .background(in: RoundedRectangle(cornerRadius: 8))
                    .border(.black)
                    .padding()
                    .padding(.bottom, -16)
                
                CrosswordScrollView()
                
                HStack {
                    PacksCardView(color: .crossword)
                        .padding(.trailing, 8)
                    ArchiveCardView(color: .crossword)
                }
                .padding(.bottom, 16)
                
                SpellingBeeScrollView()
                    
                WordleScrollView()
                
                LongArchiveCardView(color: .wordleCard)
                    .padding(.leading, -16)
                    .padding(.bottom, 16)
                    
                ConnectionsScrollView()
                
                LongArchiveCardView(color: .connections)
                    .padding(.leading, -16)
                    .padding(.bottom, 16)
                
                HStack(spacing: 16) {
                    StrandsView()
                    SudokuView()
                }
                .padding(.top, 16)
                .padding(.bottom, 16)
                
                MiniScrollView()
                
                HStack {
                    PacksCardView(color: .mini)
                        .padding(.trailing, 8)
                    ArchiveCardView(color: .mini)
                }
                .padding(.bottom, 24)
                
                HStack(spacing: 16) {
                    LetterBoxedView()
                    TilesView()
                }
                .padding(.bottom, 16)
                
                Text("Life is more fun with Games. ✨")
                    .font(.custom("Helvetica-Bold", size: 20))
                
                
                Text("Come back every day for new puzzles.")
                    .font(.custom("Helvetica", size: 20))
                    .padding(.bottom, 16)
            }
            .padding(.top, 24)
//            .ignoresSafeArea()
            .background(.landingBkgd)
//            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItemGroup(placement: .principal) {
                HStack {
                    Image(.nytlogo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
             
                    Text("| Games")
                        .font(.custom("Rockwell-Bold", size: 20))
                        .padding(.top, 4)
                }
            }
            ToolbarItemGroup(placement: .topBarTrailing) {
                Image(systemName: "person.fill")
                    .clipShape(Circle())
            }
        }
    }
}

#Preview {
    NavigationStack {
        LandingView()
    }
//        .preferredColorScheme(.dark)
}
