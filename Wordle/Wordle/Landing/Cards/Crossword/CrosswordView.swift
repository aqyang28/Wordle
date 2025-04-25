//
//  CrosswordView.swift
//  Wordle
//
//  Created by Alex Yang on 4/18/25.
//

import SwiftUI

struct CrosswordView: View {
    let date: String = Date.now.formatted(
        .dateTime.weekday(.wide).month(.abbreviated).day()
    )
    var body: some View {
        NavigationLink {
            ArchiveView()
        } label: {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("The Crossword")
                            .font(.custom("Rockwell-Bold", size: 24))
                            .padding(.top, 12)
                        
                        Text("Subscribe to unlock daily \npuzzles and the archive.")
                            .foregroundColor(.primary.opacity(0.6))
                    }
                    Spacer()
                    Image(.crosswordLogo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65, alignment: .trailing)
                }
                .padding(.bottom, 16)
                HStack {
                    Text(date)
                        .font(.custom("Helvetica-Bold", size: 20))
                    Spacer()
                    Text("By ALEX \nYANG")
                        .multilineTextAlignment(.trailing)
                        .font(.caption)
                        .foregroundColor(.primary.opacity(0.6))
                }
            }
            .padding(.horizontal, 20)
            .overlay(alignment: .topLeading) { // add an alert to tell the user to subscirbe to access if they click on this in landing view!
                Image(systemName: "lock.fill")
                    .padding(4)
                    .background(.white, in: Circle())
                    .offset(x: -6, y: -30)
                    .shadow(color: .wordleGrey.opacity(0.6), radius: 6)
            }
            
            .frame(width: 350, height: 175)
            .background(.crossword, in: RoundedRectangle(cornerRadius: 20))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    CrosswordView()
}
