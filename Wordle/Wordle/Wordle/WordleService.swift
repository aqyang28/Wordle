//
//  WordleService.swift
//  Wordle
//
//  Created by Alex Yang on 4/20/25.
//

import Foundation

enum WordleService {
    static let decoder = JSONDecoder()
    static let encoder = JSONEncoder()
    static let baseUrl = "https://api.datamuse.com/words?sp=?????" // allow the user to choose how many letters in the word using components
    static let session = URLSession.shared

    static func getFiveLetterWords() async throws -> [Word] {
        guard let url = URL(string: baseUrl) else { fatalError("Invalid URL.") }

        let (data, _) = try await session.data(from: url)
//        print(String(data: data, encoding: .utf8))
        let words = try decoder.decode([Word].self, from: data)
//        print(words)
        return words
    }
    
}
