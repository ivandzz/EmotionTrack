//
//  ExercisesListView.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 17.02.2024.
//

import SwiftUI

struct ExercisesListView: View {
    
    @StateObject var viewModel: ExercisesListViewModel = ExercisesListViewModel.shared
    
    var body: some View {
        NavigationStack {
            VStack {
                MainTitle(title: "Exercises for the development of emotional intelligence")
                
                List {
                    Text("A general understanding and management of emotions contributes to successful functioning in various areas of life, from personal self-knowledge to successful teamwork. Therefore, developing emotional intelligence through exercises and techniques is an important part of education and self-development.")
                        .font(.body)
                        .padding(.vertical)
                    
                    ForEach(viewModel.exercises) { exercise in
                        NavigationLink {
                            ExerciseDetailView(viewModel: viewModel, exercise: exercise)
                                .toolbar(.hidden, for: .tabBar)
                        } label: {
                            ListCell(emoji: exercise.emoji, title: exercise.title)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ExercisesListView()
}
