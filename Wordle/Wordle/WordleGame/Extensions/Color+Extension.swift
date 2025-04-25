//
//  Color+Extension.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import Foundation

import SwiftUI

extension Color {
    static var wrong: Color {
        Color(UIColor(named: "WordleGrey")!)
    }

    static var misplaced: Color {
        Color(UIColor(named: "WordleYellow")!)
    }

    static var correct: Color {
        Color(UIColor(named: "WordleGreen")!)
    }

    static var unused: Color {
        Color(UIColor(named: "wordleUnused")!)
    }

    static var systemBackground: Color {
        Color(.systemBackground)
    }
}
