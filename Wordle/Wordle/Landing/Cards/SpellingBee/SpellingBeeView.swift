//
//  SpellingBeeView.swift
//  Wordle
//
//  Created by Alex Yang on 4/22/25.
//

import SwiftUI

struct SpellingBeeView: View {
    let date: String = Date.now.formatted(
        .dateTime.weekday(.wide).month(.abbreviated).day()
    )
    var body: some View {
        NavigationLink {
            MissingView()
        } label: {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Spelling Bee")
                            .font(.custom("Rockwell-Bold", size: 24))
                            .padding(.top, 16)
                        
                        Text("Make as many words as \nyou can with 7 letters.")
                            .foregroundColor(.primary.opacity(0.6))
                    }
                    Spacer()
                    Image(.spellingBeeLogo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65, alignment: .trailing)
                }
                .padding(.bottom, 16)
                HStack {
                    Text(date)
                        .font(.custom("Helvetica-Bold", size: 20))
                    Spacer()
                    Text("By ELAX NAGY")
                        .multilineTextAlignment(.trailing)
                        .font(.caption)
                        .foregroundColor(.primary.opacity(0.6))
                }
            }
            .padding(.horizontal, 20)
            .frame(width: 350, height: 175)
            .background(.spellingBeeYellow, in: RoundedRectangle(cornerRadius: 20))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    SpellingBeeView()
}
