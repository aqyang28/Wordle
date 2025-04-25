//
//  TilesView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct TilesView: View {
    var body: some View {
        NavigationLink {
            MissingView()
        } label: {
            SingleCardGameView(gameName: "Tiles", gameDesc: "Match motifs", image: "tilesLogo", color: .tiles)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    NavigationStack {
        TilesView()
    }
}
