//
//  QuestionCell.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 17.01.2024.
//

import SwiftUI

struct QuestionCell: View {
    
    @StateObject var viewModel = EmotionalTestViewModel()
    @Binding var question: Question
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Text(question.title)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(viewModel.answers, id:\.self) { choice in
                HStack {
                    Button(action: {
                        question.choice = choice
                    }, label: {
                        if question.choice == choice {
                            Circle()
                                .frame(width: 24, height: 24)
                                .shadow(radius: 3)
                        } else {
                            Circle()
                                .stroke()
                                .frame(width: 24, height: 24)
                                .shadow(radius: 3)
                        }
                    })
                    
                    Text(choice)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 5)
        
        Spacer(minLength: 50)
    }
}

#Preview {
    QuestionCell(question: .constant(Question(title: "I know myself, I know what I think, what I feel and what I do")))
}
