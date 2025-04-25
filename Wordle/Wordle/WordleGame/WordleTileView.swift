//
//  WordleRowView.swift
//  Wordle
//
//  Created by Alex Yang on 4/20/25.
//

import SwiftUI

struct WordleTileView: View {
    let letter: String?
    let color: Color
    var body: some View {
        if let letter = letter {
            Text(letter.uppercased())
                .frame(width: 50, height: 50)
                .foregroundStyle(.white)
                .font(.title)
                .bold()
                .background(color)
                .border(.wordleGrey)
            //            .border(.black)
        } else {
            Text("")
                .frame(width: 50, height: 50)
                .foregroundStyle(.white)
                .font(.title)
                .bold()
                .background(color)
                .border(.black)
        }
    }
}

#Preview {
    WordleTileView(letter: nil, color: .wordleWhite)
}
