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

class Questions: ObservableObject {
    @Published var questions = [Question(title: "I know myself, I know what I think, what I feel and what I do"),
                                Question(title: "I am able to motivate myself to study, to learn, to pass, to achieve something"),
                                Question(title: "When something goes wrong, my mood stays the same until it gets better"),
                                Question(title: "I come to reasonable positions with other people, even though we have different opinions"),
                                Question(title: "I know things that make me sad or happy"),
                                Question(title: "I know that the most important thing at all times"),
                                Question(title: "When I do something good, I recognize it"),
                                Question(title: "When other people provoke me, I cannot respond"),
                                Question(title: "I am an optimist, I always try to see the glass as half full"),
                                Question(title: "I control my thoughts"),
                                Question(title: "I talk to myself"),
                                Question(title: "When they ask me to do or say something I don't want to, I say no"),
                                Question(title: "When someone unfairly criticizes me, I defend myself through dialog with assertiveness"),
                                Question(title: "When I am criticized for something honest, I accept it"),
                                Question(title: "I am able to remove worries from my mind so that I don't get stuck"),
                                Question(title: "I am aware of what people around me are saying, thinking, or feeling"),
                                Question(title: "I appreciate the good deeds I do"),
                                Question(title: "I can always have fun"),
                                Question(title: "There are things that I don't like to do, and if I have to do them, I do them"),
                                Question(title: "I know how to smile"),
                                Question(title: "I trust myself"),
                                Question(title: "I am an active person and like to do things"),
                                Question(title: "I understand the feelings of others"),
                                Question(title: "I have conversations with other people"),
                                Question(title: "I think I have a good sense of humor"),
                                Question(title: "I learn from the mistakes I make"),
                                Question(title: "When I feel tense or anxious, I can relax and calm down so that I don't lose control and perform well"),
                                Question(title: "I am a realistic person and not pessimistic for this reason"),
                                Question(title: "If someone is very nervous, I know how to calm them down, or at least try to"),
                                Question(title: "I have very clear ideas about what I want"),
                                Question(title: "I know what my shortcomings are and how to change them"),
                                Question(title: "I have good control over my fears"),
                                Question(title: "Loneliness does not overwhelm me, sometimes it is necessary"),
                                Question(title: "I like to play sports and share my interests with others"),
                                Question(title: "I am creative"),
                                Question(title: "I know what thoughts can make me happy, sad, angry or other feelings"),
                                Question(title: "I am good at dealing with disappointment when I don't get what I set out to do"),
                                Question(title: "I communicate well with people"),
                                Question(title: "I am able to understand the point of view of others, even if it is different from my own"),
                                Question(title: "I quickly identify the emotions of people around me"),
                                Question(title: "I can see myself from the point of view of others"),
                                Question(title: "I am responsible for my actions"),
                                Question(title: "I can adapt to new situations, even if it sometimes costs me"),
                                Question(title: "I believe that I am an emotionally balanced person"),
                                Question(title: "I make firm decisions")]
    
    let answers = ["Never", "Sometimes", "Always"]
    
    func canSumbit() -> Bool {
        return questions.filter({ $0.choice == nil }).isEmpty
    }
    
    func getResult() -> Double {
        var result: Double = 0
        
        for question in questions {
            if question.choice == "Sometimes" {
                result += 1
            } else if question.choice == "Always" {
                result += 2
            }
        }
        
        return result
    }
}

struct TestResultDetails {
    let title: String
    let description: String
}

func getResultDetails(result: Double) -> TestResultDetails {
    switch result {
    case 0...20:
        return TestResultDetails(title: "Very low", description: "In this case, it means that you have a poor understanding of emotions, neither your own nor those of others. You are not able to appreciate yourself and do not see your full potential. You need to work on your life skills to be able to have more satisfactory relationships with others, but above all, to improve your relationship with yourself.")
        
    case 21...35:
        return TestResultDetails(title: "Low", description: "If you have a low score, you have some emotional skills, but you still need to improve them significantly. You need to do some personal work to get to know yourself better and appreciate who you are and what you can become. You need to recognize and identify your emotions, learn to manage them, and express them assertively")
        
    case 36...46:
        return TestResultDetails(title: "Medium-low", description: "Here you are halfway to improving your emotional skills, you are on the verge of achieving it. You already know a lot of things about your thoughts and feelings, but you need to learn how to deal with your emotions with others in a proper and effective way. You need to improve your social skills.")
        
    case 46...79:
        return TestResultDetails(title: "Medium-high", description: "Not bad at all, you know who you are, your thoughts and feelings are perfectly recognizable. You know how to manage your emotions to feel good about yourself and not let negative thoughts ruin your day. You have good relationships with others, and you know how to communicate assertively.")
        
    case 80...90:
        return TestResultDetails(title: "Very high", description: "If you received this score, congratulations! You are an emotionally intelligent person. You have great relationships and you will probably find that people look to you for advice. But you have to be careful because you can put your own needs aside. You have high leadership potential, so don't hesitate to look for opportunities to reach your full potential. The good thing about all of this is that you know your abilities as well as your weaknesses, you recognize your successes, you know how to communicate appropriately with others, and you can resolve conflicts with empathy and assertiveness. Congratulations!")
        
    default:
        return TestResultDetails(title: "Oops!", description: "Something went wrong!")
    }
}
