//
//  LetterButtonView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct LetterButtonView: View {
    @State var vm = WordleVM()
    var letter: String
    var body: some View {
        Button {
            vm.addToCurrentWord(letter)
        } label: {
            Text(letter)
                .font(.custom("Helvetica-Bold", size: 20))
                .frame(width: 35, height: 50)
                .background(vm.keyColors[letter]!, in: RoundedRectangle(cornerRadius: 6))
                .foregroundStyle(.white)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    LetterButtonView(letter: "A")
}
