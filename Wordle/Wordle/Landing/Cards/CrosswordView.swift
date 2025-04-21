//
//  CrosswordView.swift
//  Wordle
//
//  Created by Alex Yang on 4/18/25.
//

import SwiftUI

struct CrosswordView: View {
    let day: String
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("The Crossword")
                        .font(.title2)
                        .bold()

                    Text("Subscribe to unlock daily \npuzzles and the archive.")
                        .font(.subheadline)
                        .foregroundColor(.primary.opacity(0.6))
                }
                Spacer()
                Image(.crosswordlogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .trailing)
            }

            HStack {
                Text(Date.now.formatted(date: .abbreviated, time: .omitted))

                    .font(.title3)
                    .fontWeight(.semibold)
                Spacer()
                Text("By ALEX \nYANG")
                    .multilineTextAlignment(.trailing)
                    .font(.caption)
                    .foregroundColor(.primary.opacity(0.6))
            }
        }
        .padding(.horizontal)
        .padding(.bottom)
        .overlay(alignment: .topLeading) {
            Image(systemName: "lock.fill")
                .padding(4)
                .background(.white, in: Circle())
                .offset(x: -26, y: -24)
                .shadow(color: .wordleGrey, radius: 8)
        }
        .padding(.top, 12)
        .padding(.horizontal)
        .background(.crossword, in: RoundedRectangle(cornerRadius: 10))
        .padding()
    }
}

#Preview {
    CrosswordView(day: "Wednesday")
}
