//
//  ArchiveView.swift
//  Wordle
//
//  Created by Alex Yang on 4/22/25.
//

import SwiftUI

struct ArchiveView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 24) {
            Text("Access our archives with a subscription.")
                .font(.custom("Rockwell-Bold", size: 30))

                .multilineTextAlignment(.center)
            Text("Explore over 10,000 past puzzles from Wordle, Spelling Bee, and our crosswords.")
//                .font(.custom("Rockwell-Regular", size: 15))

                .multilineTextAlignment(.center)
        }
        .padding()
    }

//    init() {
//        for familyName in UIFont.familyNames {
//            print("-- \(familyName)")
//            for fontName in UIFont.fontNames(forFamilyName: familyName) {
//                print(fontName)
//            }
//        }
//    }
}

#Preview {
    NavigationStack {
        ArchiveView()
    }
}
