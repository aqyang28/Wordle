//
//  ArchiveView.swift
//  Wordle
//
//  Created by Alex Yang on 4/22/25.
//

import SwiftUI

struct ArchiveButtonView: View {
    var body: some View {
        NavigationLink {
            ArchiveView()
        }
        label: {
            Circle()
                .foregroundStyle(.archive)
                .frame(width: 175, height: 175)
                .overlay {
                    HStack {
                        Text("Go to the Archive")
                            .font(.custom("Helvetica-Bold", size: 20))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.trailing)

                        Image(systemName: "chevron.forward")
                            .font(.largeTitle)
                    }
                    .padding()
                    .foregroundStyle(.white)
                }
        }
    }
}

#Preview {
    NavigationStack {
        ArchiveButtonView()
    }
}
