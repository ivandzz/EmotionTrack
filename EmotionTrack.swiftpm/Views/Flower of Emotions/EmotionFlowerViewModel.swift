//
//  EmotionFlowerViewModel.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 07.01.2024.
//

import SwiftUI

final class EmotionFlowerViewModel: ObservableObject {
    
    @Published var selectedColor: Color = .yellow
    
    @Published var firstPetalColor: Color = .white
    @Published var secondPetalColor: Color = .white
    @Published var thirdPetalColor: Color = .white
    @Published var fourthPetalColor: Color = .white
    @Published var fifthPetalColor: Color = .white
    @Published var sixthPetalColor: Color = .white
    @Published var seventhPetalColor: Color = .white
    @Published var eighthPetalColor: Color = .white
    
    var result: [Color] {
        return [firstPetalColor, secondPetalColor, thirdPetalColor, fourthPetalColor, fifthPetalColor, sixthPetalColor, seventhPetalColor, eighthPetalColor]
    }
    
    @Published var showingAlert = true
}
