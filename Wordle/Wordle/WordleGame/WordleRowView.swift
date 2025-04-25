//
//  WordleRowView.swift
//  Wordle
//
//  Created by Alex Yang on 4/21/25.
//

import SwiftUI

// make letters be refreshing, s.t. when the user clicks enter, letters is reset. can implement by having 5 state letters, then putting those in to the list
struct WordleRowView: View {
    @State private var vm = WordleViewModel()
    @State private var letters: [String?] = [nil, nil, nil, nil, nil]
    @State private var guess: String = ""
    var body: some View {
        VStack(spacing: 4) {
            TextField("Guess", text: $guess) // guess can't be a nonexistent 5 letter word
                
                .textInputAutocapitalization(.characters)
                .autocorrectionDisabled()
                
            HStack(spacing: 4) {
                ForEach(letters, id: \.self) { letter in
                    switch vm.color {
                    case .correct:
                        WordleTileView(letter: letter, color: .wordleGreen)
                    case .misplaced:
                        WordleTileView(letter: letter, color: .wordleYellow)
                    case .wrong:
                        WordleTileView(letter: letter, color: .wordleGrey)
                    case .empty:
                        WordleTileView(letter: letter, color: .wordleWhite)
                    }
                }
            }
            HStack(spacing: 4) {
                ForEach(letters, id: \.self) { letter in
                    WordleTileView(letter: letter, color: .wordleGreen)
                }
            }
        }
    }
}

#Preview {
    WordleRowView()
}
