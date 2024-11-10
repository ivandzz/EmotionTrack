//
//  Tips.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 12.01.2024.
//

import Foundation

class Tip: Identifiable {
    let emoji: String
    let title: String
    let description: String
    
    init(emoji: String, title: String, description: String) {
        self.emoji = emoji
        self.title = title
        self.description = description
    }
}
