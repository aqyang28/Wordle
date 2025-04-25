//
//  CrosswordArchiveView.swift
//  Wordle
//
//  Created by Alex Yang on 4/21/25.
//

import SwiftUI

struct CrosswordArchiveView: View {
    let date: Date

    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack {
                Image(.crosswordLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 65, height: 65)
                    .padding(.bottom, 24)

                Text(date.formatted(.dateTime.weekday(.wide)))
                    .font(.custom("Helvetica-Bold", size: 20))
                    .padding(.bottom, 8)
            }
            .frame(width: 175, height: 175)
            .background(.crossword, in: RoundedRectangle(cornerRadius: 20))

            Image(systemName: "lock.fill")
                .padding(4)
                .background(.white, in: Circle())
                .shadow(color: .wordleGrey.opacity(0.6), radius: 6)
                .offset(x: -6, y: -6)
        }
    }
}

#Preview {
    CrosswordArchiveView(date: Date())
}
