//
//  WordleViewVid.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct GameView: View {
    @State private var vm = WordleVM()
    @State private var anothervm = WordleViewModel()
    @State private var currentGuess: String = ""
    @State private var answer: String?

    var body: some View {
        Button("Fetch word") {
            Task {
                await anothervm.fetchWords()
            }
        }
        .padding(.top, 46)
        if let answer = anothervm.answerWord {
            Text("Answer: \(answer)")
        }
        VStack {
            Spacer()
            VStack(spacing: 3) {
                GuessView(guess: $vm.guesses[0])
                GuessView(guess: $vm.guesses[1])
                GuessView(guess: $vm.guesses[2])
                GuessView(guess: $vm.guesses[3])
                GuessView(guess: $vm.guesses[4])
                GuessView(guess: $vm.guesses[5])
            }
        }
        .frame(width: Global.boardWidth, height: 6 * Global.boardWidth / 5)
        .padding(.top, 56)
        Spacer()
        Text(currentGuess.uppercased())
        Keyboard { key in
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
        .padding()
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                Text("WORDLE")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Image(systemName: "questionmark.circle")
                Image(systemName: "chart.bar.xaxis")
                Image(systemName: "gear")
            }
        }
//            .navigationBarBackButtonHidden()
        .toolbarVisibility(.hidden, for: .tabBar)
    }
}

#Preview {
    NavigationStack {
        GameView()
    }
}
