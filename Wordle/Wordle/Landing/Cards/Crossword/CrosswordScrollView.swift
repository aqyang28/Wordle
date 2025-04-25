//
//  CrosswordScrollView.swift
//  Wordle
//
//  Created by Alex Yang on 4/21/25.
//

import SwiftUI

struct CrosswordScrollView: View {
    let calendar = Calendar.current

    var pastWeekDates: [Date] {
        (1 ..< 8).compactMap {
            calendar.date(byAdding: .day, value: -$0, to: Date())
        }
    }

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                CrosswordView()
                ForEach(pastWeekDates, id: \.self) { date in
                    GameArchiveModelView(date: date, image: "crosswordLogo", color: .crossword)
                }
                ArchiveButtonView()
            }
            .padding()
        }
    }
}

#Preview {
    CrosswordScrollView()
}
