//
//  LongArchiveCardView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct LongArchiveCardView: View {
    let width = 350.0
    let height = 60.0
    let color: Color
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(color)
                .frame(width: width - 5, height: height)
                .offset(x: -2.5, y: 5)
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
                Text("Archive")
                    .font(.custom("Helvetica-Bold", size: 20))
                    .padding(.leading, 20)

                Spacer()

                Image(systemName: "archivebox.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .padding(24)
            }
            .frame(width: width, height: height)
            .zIndex(3)
        }
    }
}

#Preview {
    LongArchiveCardView(color: .crossword)
}
