//
//  WordleViewModel.swift
//  Wordle
//
//  Created by Alex Yang on 4/18/25.
//

import Foundation

enum WordleLoadingState {
    case success(words: [Word])
    case error(error: String)
    case loading
    case idle
}

enum WordleColor {
    case correct
    case misplaced
    case wrong
    case empty
}

class WordleViewModel: ObservableObject {
    @Published var answerWord: String?
    @Published var state: WordleLoadingState = .idle
    @Published var color: WordleColor = .empty

    func fetchWords() async {
        do {
            let words = try await WordleService.getFiveLetterWords()
            if let randomWord = words.randomElement()?.word.lowercased() {
                self.answerWord = randomWord
                print(randomWord)
                self.state = .success(words: words)
            } else {
                self.state = .error(error: "No words found.")
            }
        } catch {
            self.state = .error(error: error.localizedDescription)
        }
    }
}
