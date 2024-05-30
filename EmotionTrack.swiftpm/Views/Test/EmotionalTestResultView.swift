//
//  EmotioalTestResultView.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 17.01.2024.
//

import SwiftUI

struct EmotionalTestResultView: View {
    var result: Double
    
    var resultDetails: TestResultDetails { getResultDetails(result: result) }
    
    var body: some View {
        VStack {
            Text(resultDetails.title)
                .font(.largeTitle)
            
            ZStack {
                Circle()
                    .stroke(.teal.opacity(0.5), lineWidth: 25)
                    .frame(width: 200, height: 200)
                
                Circle()
                    .trim(from: 0, to: result * 100 / 90 / 100)
                    .stroke(.teal, lineWidth: 25)
                    .frame(width: 200, height: 200)
                    .rotationEffect(.degrees(-90))
                
                Text("\(Int(result * 100 / 90))%")
                    .font(.system(size: 85))
                    .foregroundStyle(Color(.label))
            }
            
            ScrollView {
                Text(resultDetails.description)
                    .font(.body)
            }
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    EmotionalTestResultView(result: 21)
}
