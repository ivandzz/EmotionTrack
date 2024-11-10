//
//  Question.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 17.01.2024.
//

import Foundation

struct Question {
    let id = UUID()
    let title: String
    var choice: String?
}

struct TestResult {
    let score: Double
    let title: String
    let description: String
}
