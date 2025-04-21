//
//  WordleView.swift
//  Wordle
//
//  Created by Alex Yang on 4/20/25.
//

import SwiftUI

struct WordleView: View {
    @StateObject var vm = WordleViewModel()

    var body: some View {
        Button("Fetch words") {
            Task {
                await vm.fetchWords()
            }
        }
        

        if let answer = vm.answerWord {
            Text("Answer: \(answer)")
        }
    }
}

#Preview {
    WordleView()
}
