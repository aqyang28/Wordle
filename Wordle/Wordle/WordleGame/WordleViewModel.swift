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

enum WordleStatus {
    case won
    case lost
    case playing
}

enum WordExist {
    case exist
    case noExist
}

//// chat enum
// enum DictionaryAPIResponse: Decodable {
//    case valid([Word])
//    case invalid(ErrorResponse)
//
//    struct ErrorResponse: Decodable {
//        let title: String
//        let message: String
//        let resolution: String
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//
//        // First, try to decode as an array (valid response)
//        if let words = try? container.decode([Word].self) {
//            self = .valid(words)
//            return
//        }
//
//        // If decoding as array fails, try to decode as error object
//        if let errorResponse = try? container.decode(ErrorResponse.self) {
//            self = .invalid(errorResponse)
//            return
//        }
//
//        throw DecodingError.dataCorruptedError(in: container, debugDescription: "Invalid Dictionary API response")
//    }
// }
//
////

@Observable
class WordleViewModel {
    public var answerWord: String?
    public var state: WordleLoadingState = .idle
    public var color: WordleColor = .empty
    public var status: WordleStatus = .playing

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
