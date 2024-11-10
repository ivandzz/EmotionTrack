//
//  ExercisesDetailView.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 17.02.2024.
//

import SwiftUI

struct ExerciseDetailView: View {
    
    @ObservedObject var manager: ExercisesManager
    @State var exercise: Exercise
    
    var body: some View {
        VStack {
            Text(exercise.title)
                .font(.largeTitle)
                .scaledToFit()
                .minimumScaleFactor(0.7)
                .padding(.horizontal)
            
            ScrollView {
                Text(exercise.description)
                    .font(.body)
            }
            .padding(.horizontal)
            
            Spacer()
            
            ZStack {
                Circle()
                    .fill(.teal)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 5)
                Text(exercise.emoji)
                    .font(.system(size: 100))
                    .shadow(radius: 5)
            }
            
            HStack {
                if let previous = manager.previous(for: exercise) {
                    Button(action: {
                        exercise = previous
                    }, label: {
                        ButtonLabel(title: "Previous", width: 140)
                    })
                }
                
                Spacer()
                
                if let next = manager.next(for: exercise) {
                    Button(action: {
                        exercise = next
                    }, label: {
                        ButtonLabel(title: "Next", width: 140)
                    })
                }
            }
        }
    }
}

#Preview {
    ExerciseDetailView(manager: ExercisesManager.shared, exercise: Exercise(emoji: "📔", title: "Diary of emotions", description: "Throughout the day, write down all your emotions and the events that caused them. The goal is to understand yourself better. For visualization, you can use markers to indicate the color of emotions or emoticons. And then set yourself the task of increasing the number of cheerful emoticons. And remember that most events are neutral in themselves. And emotions are just our reaction to them."))
}
