//
//  Exercises.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 17.02.2024.
//

import Foundation

class Exercise: Identifiable {
    let emoji: String
    let title: String
    let description: String
    
    init(emoji: String, title: String, description: String) {
        self.emoji = emoji
        self.title = title
        self.description = description
    }
}
