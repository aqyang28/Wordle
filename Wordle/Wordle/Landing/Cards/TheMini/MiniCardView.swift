//
//  MiniCardView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct MiniCardView: View {
    let date: String = Date.now.formatted(
        .dateTime.weekday(.wide).month(.abbreviated).day()
    )
    var body: some View {
        NavigationLink {
            MissingView()
        } label: {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("The Mini")
                            .font(.custom("Rockwell-Bold", size: 24))
                            .padding(.top, 16)

                        Text("Solve the puzzle \nin seconds.")
                            .foregroundColor(.primary.opacity(0.6))
                    }
                    Spacer()
                    Image(.miniLogo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65, alignment: .trailing)
                }
                .padding(.bottom, 16)
                HStack {
                    Text(date)
                        .font(.custom("Helvetica-Bold", size: 20))
                    Spacer()
                    Text("By ALEXANDRA \nMARUM")
                        .multilineTextAlignment(.trailing)
                        .font(.caption)
                        .foregroundColor(.primary.opacity(0.6))
                }
            }

            .padding(.horizontal, 20)
            .frame(width: 350, height: 175)
            .background(.mini, in: RoundedRectangle(cornerRadius: 20))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    NavigationStack {
        MiniCardView()
    }
}
