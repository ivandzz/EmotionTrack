//
//  EmotioalTestResultView.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 17.01.2024.
//

import SwiftUI

struct EmotionalTestResultView: View {
    
    var result: TestResult
    
    var body: some View {
        VStack {
            Text(result.title)
                .font(.largeTitle)
            
            ZStack {
                Circle()
                    .stroke(.teal.opacity(0.5), lineWidth: 25)
                    .frame(width: 200, height: 200)
                
                let trimmedScore = result.score / 90
                
                Circle()
                    .trim(from: 0, to: trimmedScore)
                    .stroke(.teal, lineWidth: 25)
                    .frame(width: 200, height: 200)
                    .rotationEffect(.degrees(-90))
                
                Text("\(Int(result.score * 100 / 90))%")
                    .font(.system(size: 85))
                    .foregroundStyle(Color(.label))
            }
            
            ScrollView {
                Text(result.description)
                    .font(.body)
            }
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    EmotionalTestResultView(result: TestResult(score: 99, title: "Very high", description: "If you received this score, congratulations! You are an emotionally intelligent person. You have great relationships and you will probably find that people look to you for advice. But you have to be careful because you can put your own needs aside. You have high leadership potential, so don't hesitate to look for opportunities to reach your full potential. The good thing about all of this is that you know your abilities as well as your weaknesses, you recognize your successes, you know how to communicate appropriately with others, and you can resolve conflicts with empathy and assertiveness. Congratulations!"))
}
