//
//  PacksCardView.swift
//  Wordle
//
//  Created by Alex Yang on 4/22/25.
//

import SwiftUI

struct PacksCardView: View {
    let width = 175.0
    let height = 60.0
    let color: Color
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(color)
                .frame(width: width - 5, height: height)
                .offset(x: 2.5, y: 5)
                .zIndex(0)
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.white)
                .frame(width: width, height: height)
                .offset(y: 3)
                .zIndex(1)
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(color)
                .frame(width: width, height: height)
                .offset(y: 0)
                .zIndex(2)
            HStack {
                Text("Packs")
                    .font(.custom("Helvetica-Bold", size: 20))
                    .padding(.leading, 24)
                Spacer()
                Image(systemName: "square.on.square.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .rotation3DEffect(.degrees(180), axis: (0, 0, 1))
                    .padding(24)
            }
            .frame(width: width, height: height)
            .zIndex(3)
        }
    }
}

#Preview {
    PacksCardView(color: .crossword)
}
