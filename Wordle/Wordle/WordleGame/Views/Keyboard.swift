//
//  Keyboard.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct Keyboard: View {
    @State private var vm = WordleVM()
    let onKeyPress: (String) -> Void

    var topRowArray = "QWERTYUIOP".map { String($0) }
    var midRowArray = "ASDFGHJKL".map { String($0) }
    var botRowArray = "ZXCVBNM".map { String($0) }

    var body: some View {
        VStack {
            HStack(spacing: 4) {
                ForEach(topRowArray, id: \.self) { key in
                    KeyboardKey(label: key) {
                        onKeyPress(key)
                    }
                }
            }
            HStack(spacing: 4) {
                ForEach(midRowArray, id: \.self) { key in
                    KeyboardKey(label: key) {
                        onKeyPress(key)
                    }
                }
            }
            HStack(spacing: 4) {
                Button {
                    vm.enterWord()
                } label: {
                    Text("ENTER")
                }
                .font(.custom("Helvetica-Bold", size: 14))
                .frame(width: 60, height: 50)
                .foregroundStyle(.white)
                .background(.wordleUnused, in: RoundedRectangle(cornerRadius: 6))
                ForEach(botRowArray, id: \.self) { key in
                    KeyboardKey(label: key) {
                        onKeyPress(key)
                    }
                }
                Button {
                    vm.deleteLetter()
                } label: {
                    Image(systemName: "delete.backward")
                        .font(.custom("Helvetica-Bold", size: 14))
                        .frame(width: 45, height: 50)
                        .foregroundStyle(.white)
                        .background(.wordleUnused, in: RoundedRectangle(cornerRadius: 6))
                }
            }
        }
    }
}

#Preview {
    Keyboard{ key in print("Key pressed \(key)") }
}
