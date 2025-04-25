//
//  MissingView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct MissingView: View {
    var body: some View {
        Text("Whoops! This screen hasn't been built yet. Come back another time!")
            .font(.custom("Helvetica", size: 24))
            .padding()
            .multilineTextAlignment(.center)
        NavigationLink(destination: LandingView()) {
            Text("Take me back to the games!")
                .padding()
                .font(.custom("Rockwell-Bold", size: 20))
        }
        .buttonStyle(BorderedButtonStyle())
//        .buttonStyle(BorderedProminentButtonStyle)
    }
}

#Preview {
    NavigationStack {
        MissingView()
    }
}
