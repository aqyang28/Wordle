//
//  StrandsView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct SingleCardGameView: View {
    let gameName: String
    let gameDesc: String
    let image: String
    let color: Color

    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 65, height: 65)

                Text(gameName)
                    .font(.custom("Rockwell-Bold", size: 24))

                Text(gameDesc)
                    .foregroundColor(.primary.opacity(0.6))
            }
            .frame(width: 175, height: 175)
            .background(color, in: RoundedRectangle(cornerRadius: 20))
        }
    }
}

#Preview {
    SingleCardGameView(gameName: "Strands", gameDesc: "Find hidden words", image: "strandsLogo", color: .strands)
}
