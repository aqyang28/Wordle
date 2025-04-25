//
//  ArchiveCardView.swift
//  Wordle
//
//  Created by Alex Yang on 4/22/25.
//

import SwiftUI

struct ArchiveCardView: View {
    let width = 175.0
    let height = 60.0
    let color: Color
    var body: some View {
        NavigationLink {
            ArchiveView()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(color)
                    .frame(width: width - 5, height: height)
                    .offset(x: -2.5, y: 5)
                    .zIndex(0)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.white)
                    .frame(width: width, height: height)
                    .offset(y: 3)
                    .zIndex(1)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(color)
                    .frame(width: width, height: height)
                    .offset(y: 0)
                    .zIndex(2)
                HStack {
                    Text("Archive")
                        .font(.custom("Helvetica-Bold", size: 18))
                        .padding(.leading, 20)
                    
                    Spacer()
                    
                    Image(systemName: "archivebox.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .padding(24)
                }
                .frame(width: width, height: height)
                .zIndex(3)
            }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    ArchiveCardView(color: .crossword)
}
