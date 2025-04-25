//
//  GuessView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct GuessView: View {
    @Binding var guess: Guess
    var body: some View {
        HStack(spacing: 3) {
            ForEach(0 ... 4, id: \.self) { index in
                Text(guess.guessLetters[index])
                    .foregroundStyle(.primary)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                    .background(.wordleWhite)
                    .font(.system(size: 35, weight: .heavy))
                    .border(.secondary)
            }
        }
    }
}

#Preview {
    GuessView(guess: .constant(Guess(index: 0)))
}
