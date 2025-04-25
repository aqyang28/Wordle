//
//  ConnectionsScrollView.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import SwiftUI

struct ConnectionsScrollView: View {
    let calendar = Calendar.current

    var pastWeekDates: [Date] {
        (1 ..< 8).compactMap {
            calendar.date(byAdding: .day, value: -$0, to: Date())
        }
    }

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ConnectionsCardView()
                ForEach(pastWeekDates, id: \.self) { date in
                    GameArchiveModelView(date: date, image: "connectionsLogo", color: .connections)
                }
                ArchiveButtonView()
            }
            .padding()
        }
    }
}

#Preview {
    ConnectionsScrollView()
}
