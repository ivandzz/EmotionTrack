//
//  ResultDetailsView.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 07.01.2024.
//

import SwiftUI

struct ResultDetailsView: View {
    
    var color: ColorDetails
    
    var body: some View {
        VStack {
            Text(color.title)
                .font(.largeTitle)
            
            ScrollView {
                Text(color.description)
                    .font(.body)
            }
            .padding(.horizontal)
            
            Spacer()
            
            ZStack {
                Circle()
                    .fill(.teal)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 5)
                Text(color.emoji)
                    .font(.system(size: 100))
                    .shadow(radius: 5)
            }
        }
    }
}

#Preview {
    ResultDetailsView(color: ColorDetails(emoji: "💖", title: "Admiration", description: "Admiration is an emotion that occurs when we see something or someone that we consider outstanding, impressive, or worthy of emulation. It is a feeling of respect and admiration that can be directed toward people, animals, objects, ideas, or achievements. \nAdmiration can have many positive effects, for example: \n• Motivates us to achieve more. \n• Helps us see the beauty in the world. \n• Strengthens our relationships with other people. \n• Makes our life more rich and interesting. \nHow to develop a hobby? \n• Be open to new things. \n• Pay attention to what inspires you. \n• Look for people you admire. \n• Don't be afraid to express your passion. \nAdmiration is a powerful emotion that can enrich our lives. It can motivate us to improve ourselves, help us see the beauty in the world, and strengthen our relationships with others."))
}
