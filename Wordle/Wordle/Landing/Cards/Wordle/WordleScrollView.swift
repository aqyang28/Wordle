//
//  WordleScrollView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct WordleScrollView: View {
    let calendar = Calendar.current

    var pastWeekDates: [Date] {
        (1 ..< 8).compactMap {
            calendar.date(byAdding: .day, value: -$0, to: Date())
        }
    }

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                WordleCardView()
                ForEach(pastWeekDates, id: \.self) { date in
//                    WordleArchiveView(date: date)
                    GameArchiveModelView(date: date, image: "wordleLogo", color: .wordleCard)
                }
                ArchiveButtonView()
            }
            .padding()
        }
    }
}

#Preview {
    NavigationStack {
        WordleScrollView()
    }
}
