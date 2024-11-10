//
//  ExercisesListViewModel.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 10.11.2024.
//

import Foundation

final class ExercisesListViewModel: ObservableObject {
    
    static let shared = ExercisesListViewModel()
    @Published var exercises = [
        Exercise(emoji: "🌈", title: "My emotion", description: "To find out how well you understand your feelings, answer 3 questions. \n1. What emotion am I experiencing right now? \n2. Is this emotion good for me right now? \n3. How often do I feel this emotion during the day? \nDescribe only those emotions that you noted when reading these questions. This exercise will help you start the process of self-analysis. Do it regularly in different situations, and over time you will get used to paying attention to your feelings."),
        Exercise(emoji: "📔", title: "Diary of emotions", description: "Throughout the day, write down all your emotions and the events that caused them. The goal is to understand yourself better. For visualization, you can use markers to indicate the color of emotions or emoticons. And then set yourself the task of increasing the number of cheerful emoticons. And remember that most events are neutral in themselves. And emotions are just our reaction to them."),
        Exercise(emoji: "💪", title: "Body language", description: "1. Lower your head, lower your shoulders and, looking at the floor, say in a sad voice: \"I am a successful person, I do everything...\" \n2. Then raise your arms up, looking at the sky with your chin up, straighten your back and say in a confident voice: \"I am a failure, everything goes wrong for me, nothing works out...\" \nWhat did you feel? It turns out that the brain does not understand words! But facial expressions and gestures send signals to the subcortex (the ancient limbic system), and we begin to feel what the body is broadcasting. \nNow that you have felt the difference, take the \"leader's pose\" for at least a couple of minutes a day for two weeks. On the third week, you will see how the world around you has changed! \nAs a \"quick self-help\" for every day, you can use a small exercise - it is appropriate to do it in the office or any other place."),
        Exercise(emoji: "🧘", title: "Correct breathing", description: "Sit comfortably and focus on your breath. Take a calm breath in for 4 counts, hold the breath for 4 counts, and exhale for 4 counts. In this way, increase the count up to 8 times. Breathe in this way until you feel that you have restored your emotional state."),
        Exercise(emoji: "🤔", title: "5 \"Why?\"", description: "How can you identify your motives? Ask yourself the question \"Why?\" And ask it 5 times in succession. And answer it yourself. For example: \"Why do I go to work?\" Because it is my development. \"Why is development important to me?\" To prove myself... \"Why do I need to prove myself...?\" It is important for me to be worthy of ... \"Why is it important for me to be worthy of ...?\" I will be able to afford ... \"Why is it important for me to afford ...?\" To feel free to do what I love. \nThese simple 5 questions and answers give you insight into your deepest motivations for action. By the way, there is another question that explains a lot: \"What would I do even without money?\""),
        Exercise(emoji: "🤝", title: "Empathy", description: "How can you develop empathy? For this exercise, you will need a partner. It can be a relative, friend, colleague, or just someone who is willing to help you and give you 20 minutes of their time. Choose a comfortable place and a calm atmosphere. Think about the topic of your conversation (don't discuss anything painful) and the sequence of the discussion. \n5 minutes after the start of the conversation, put yourself in the other person's shoes. Feel everything that might be bothering them right now, including emotional impulses. Keep your attention focused, memorize every feeling. \nAfter 10 minutes, mentally move yourself to the position of an observer. This will be easier if you imagine that you are looking at the conversation from the top corner of the room. Pay attention to how your reactions to words have changed, how attentively you listen to the other person. Many people say that this sharpens their perception: if before they felt like they were watching a movie of poor quality, now they see bright colors, focus, and sharpness. \nRepeat this exercise at least once a week. The skill of empathy is being developed!"),
        Exercise(emoji: "👐", title: "Everything is in your hands", description: "Let's say that tomorrow you need to introduce yourself at a very important forum. You have exactly 31 seconds to speak. To prepare for your presentation, do the following: \n• imagine the room where you will be speaking and the people in it; \n• feel their emotions, understand what they want; \n• feel confident in yourself; \n• summarize the essence of your speech in one sentence.")
    ]
    
    func previous(for exercise: Exercise) -> Exercise? {
        if let index = exercises.firstIndex(where: {$0.title == exercise.title}) {
            if index > 0 {
                return exercises[index - 1]
            }
        }
        return nil
    }
    
    func next(for exercise: Exercise) -> Exercise? {
        if let index = exercises.firstIndex(where: {$0.title == exercise.title}) {
            if index < exercises.count - 1  {
                return exercises[index + 1]
            }
        }
        return nil
    }
}
