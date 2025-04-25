//
//  MiniScrollView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct MiniScrollView: View {
    let calendar = Calendar.current

    var pastWeekDates: [Date] {
        (1 ..< 8).compactMap {
            calendar.date(byAdding: .day, value: -$0, to: Date())
        }
    }

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                MiniCardView()
                ForEach(pastWeekDates, id: \.self) { date in
                    GameArchiveModelView(date: date, image: "miniLogo", color: .mini)
                }
                ArchiveButtonView()
            }
            .padding()
        }
    }
}

#Preview {
    MiniScrollView()
}
