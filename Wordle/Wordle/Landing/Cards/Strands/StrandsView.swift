//
//  StrandsView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct StrandsView: View {
    var body: some View {
        NavigationLink {
            MissingView()
        } label: {
            SingleCardGameView(gameName: "Strands", gameDesc: "Find hidden words", image: "strandsLogo", color: .strands)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    StrandsView()
}
