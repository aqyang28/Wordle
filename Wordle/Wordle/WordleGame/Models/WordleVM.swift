//
//  WordleVM.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import Foundation

import SwiftUI

@Observable
class WordleVM {
    var guesses: [Guess] = []
    var answer = ""
    var keyColors = [String: Color]()

    init() {
        populateDefaults()
    }

    func newGame() async {
        populateDefaults()
        do {
            answer = try await WordleService.getRandomWord()
        } catch {
            print("Failed to fetch word: ", error)
            answer = ""
        }
    }

    func populateDefaults() {
        guesses = []
        for index in 0 ... 5 {
            guesses.append(Guess(index: index))
        }

        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        for char in letters {
            keyColors[String(char)] = .wordleUnused
        }
    }

    func addToCurrentWord(_ letter: String) {}

    func enterWord() {
    }
    

    func deleteLetter() {}
}
