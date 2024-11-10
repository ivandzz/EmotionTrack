//
//  EmotionalTestView.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 17.01.2024.
//

import SwiftUI

struct EmotionalTestView: View {
    
    @StateObject var viewModel = EmotionalTestViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                MainTitle(title: "Emotional intelligence test")
                
                ScrollView {
                    ForEach(viewModel.questions.indices, id: \.self) { index in
                        QuestionCell(question: $viewModel.questions[index])
                    }
                }
                
                if viewModel.canSumbit() {
                    NavigationLink {
                        EmotionalTestResultView(result: viewModel.getResult())
                    } label: {
                        ButtonLabel(title: "Submit", width: 280)
                    }
                    
                } else {
                    Text("Choose a option for all questions")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .scaledToFit()
                        .minimumScaleFactor(0.7)
                        .frame(width: 280, height: 50)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    EmotionalTestView()
}
