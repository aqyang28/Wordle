//
//  SpellingBeeScrollView.swift
//  Wordle
//
//  Created by Alex Yang on 4/22/25.
//

import SwiftUI

struct SpellingBeeScrollView: View {
    let calendar = Calendar.current

    var pastWeekDates: [Date] {
        (1 ..< 8).compactMap {
            calendar.date(byAdding: .day, value: -$0, to: Date())
        }
    }

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                SpellingBeeView()
                ForEach(pastWeekDates, id: \.self) { date in
//                    SpellingBeeArchiveView(date: date)
                    GameArchiveModelView(date: date, image: "spellingBeeLogo", color: .spellingBeeYellow)
                }
                ArchiveButtonView()
            }
            .padding()
        }
    }
}

#Preview {
    SpellingBeeScrollView()
}
