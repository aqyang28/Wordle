//
//  SudokuView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct SudokuView: View {
    var body: some View {
        NavigationLink {
            MissingView()
        } label: {
            SingleCardGameView(gameName: "Sudoku", gameDesc: "Decode digits", image: "sudokuLogo", color: .sudoku)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    SudokuView()
}
