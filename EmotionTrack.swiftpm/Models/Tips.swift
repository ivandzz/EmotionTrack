//
//  Tips.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 12.01.2024.
//

import Foundation

//code from https://developer.apple.com/forums/thread/675648
class Tip: Identifiable {
    let emoji: String
    let title: String
    let description: String
    
    init(emoji: String, title: String, description: String) {
        self.emoji = emoji
        self.title = title
        self.description = description
    }
    
    static let tips = [
        Tip(emoji: "🤔", title: "Reflect on your own emotions", description: "For example, think about how you usually respond to an email that makes you angry. By identifying your own emotions and reactions, you become more mindful and begin to control them."),
        Tip(emoji: "👀", title: "Get an outside perspective", description: "We don't see ourselves the way others see us. Ask a friend or a close colleague how you react when they are \"emotional\". The answers will help you to get a more accurate characterization of yourself."),
        Tip(emoji: "🧐", title: "Be observant", description: "Armed with the knowledge you've just gained, you can better monitor your current emotions. Self-reflection and reflecting on what others have shared with you will help you to be more in tune with your own feelings."),
        Tip(emoji: "⏱️", title: "Take a break", description: "Pausing is as simple as stopping for a moment and thinking before acting or speaking, a skill that can be hindered by factors such as additional stress. Practice pausing before responding to an email that upsets you or before posting a comment on a social network."),
        Tip(emoji: "🧘", title: "Focus on feelings, not events", description: "Being empathetic means doing your best to see the situation through the eyes of another. We may not understand why another person feels discomfort, anger, or pain. However, we can join these feelings, and this will help us understand the person."),
        Tip(emoji: "😌", title: "Do not be offended", description: "Criticism is always hard to take. But when you receive it, you have two choices: let your emotions consume you or learn from it. Don't let your emotions close your mind to negative feedback. Use it to make yourself better."),
        Tip(emoji: "📈", title: "Practice and practice some more", description: "As with any other skill or ability, practice makes perfect. Of course, it is impossible to control your emotions perfectly. But by practicing these steps, you will begin to tame the power of emotions and use them to your advantage, not the other way around.")
    ]
}

class TipsManager: ObservableObject {
    static let shared = TipsManager()
    @Published var tipList = Tip.tips
    
    func previous(for tip: Tip) -> Tip? {
        if let index = tipList.firstIndex(where: {$0.title == tip.title}) {
            if index > 0 {
                return tipList[index - 1]
            }
        }
        return nil
    }
    
    func next(for tip: Tip) -> Tip? {
        if let index = tipList.firstIndex(where: {$0.title == tip.title}) {
            if index < tipList.count - 1  {
                return tipList[index + 1]
            }
        }
        return nil
    }
}
