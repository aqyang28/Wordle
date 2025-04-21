//
//  Wordle.swift
//  Wordle
//
//  Created by Alex Yang on 4/20/25.
//

import Foundation

struct Word: Codable {
    let word: String
}

struct Wordle {
    var solution: String
    var guess: String?
    var guesses: [String?]
    let maxGuesses: Int = 6
    var isWon: Bool = false
}

