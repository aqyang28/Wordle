//
//  WordleView.swift
//  Wordle
//
//  Created by Alex Yang on 4/20/25.
//

import SwiftUI

struct WordleView: View {
    @State var vm = WordleViewModel()
    @State private var currentGuess: String = ""


    var body: some View {
        Button("Fetch word") {
            Task {
                await vm.fetchWords()
            }
        }

        if let answer = vm.answerWord {
            Text("Answer: \(answer)")
        }

        KeyboardView { key in
            switch key {
            case "ENTER":
                if currentGuess.count == 5 {
                    print("Submit: \(currentGuess)")
                }
                else {
                    print("Not enough letters")
                }
            case "⌫":
                if !currentGuess.isEmpty {
                    currentGuess.removeLast()
                }
            default:
                if currentGuess.count < 5 {
                    currentGuess.append(key.lowercased())
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                Button {
                
                } label: {
                    Image(systemName: "questionmark.circle")
                }
            }
            ToolbarItemGroup(placement: .principal) {
                Text("WORDLE")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.primary)
            }       }
        Text(currentGuess.uppercased())
    }
}

#Preview {
    NavigationStack {
        WordleView()
    }
}
