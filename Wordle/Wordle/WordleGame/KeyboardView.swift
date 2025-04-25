//
//  KeyboardView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

// struct KeyboardView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
// }

struct KeyboardKey: View {
    let label: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.system(size: 18, weight: .bold))
                .foregroundStyle(.white)
                .frame(minWidth: 30, minHeight: 50)
                .padding(.horizontal, label.count > 1 ? 10 : 0)
                .background(Color.wordleUnused)
                .cornerRadius(6)
        }
    }
}

struct KeyboardView: View {
    let onKeyPress: (String) -> Void

    var body: some View {
        VStack(spacing: 8) {
            HStack(spacing: 4) {
                ForEach(topRow, id: \.self) { key in
                    KeyboardKey(label: key) {
                        onKeyPress(key)
                    }
                }
            }

            HStack(spacing: 4) {
                ForEach(middleRow, id: \.self) { key in
                    KeyboardKey(label: key) {
                        onKeyPress(key)
                    }
                }
            }

            HStack(spacing: 4) {
                ForEach(bottomRow, id: \.self) { key in
                    KeyboardKey(label: key) {
                        onKeyPress(key)
                    }
                }
            }
        }
        .padding(.horizontal)
    }

    private var topRow: [String] {
        "QWERTYUIOP".map { String($0) }
    }

    private var middleRow: [String] {
        "ASDFGHJKL".map { String($0) }
    }

    private var bottomRow: [String] {
        ["ENTER"] + "ZXCVBNM".map { String($0) } + ["⌫"]
    }
}

#Preview {
//    func test(x: String) -> Void {
//        print(x)
//    }
    KeyboardView { key in print("Key pressed \(key)") }
}
