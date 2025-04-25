//
//  LetterBoxedView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct LetterBoxedView: View {
    var body: some View {
        NavigationLink {
            MissingView()
        } label: {
            SingleCardGameView(gameName: "Letter Boxed", gameDesc: "Connect characters", image: "letterBoxedLogo", color: .letterBoxed)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    LetterBoxedView()
}
