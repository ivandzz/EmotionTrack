//
//  TipsDetailView.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 12.01.2024.
//

import SwiftUI

struct TipDetailView: View {
    @ObservedObject var manager: TipsManager
    @State var tip: Tip
    
    var body: some View {
        VStack {
            Text(tip.title)
                .font(.largeTitle)
                .scaledToFit()
                .minimumScaleFactor(0.7)
                .padding(.horizontal)
            
            ScrollView {
                Text(tip.description)
                    .font(.body)
                
            }
            .padding(.horizontal)
            
            Spacer()
            
            ZStack {
                Circle()
                    .fill(.teal)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 5)
                Text(tip.emoji)
                    .font(.system(size: 100))
                    .shadow(radius: 5)
            }
            
            HStack {
                if let previous = manager.previous(for: tip) {
                    Button(action: {
                        tip = previous
                    }, label: {
                        ButtonLabel(title: "Previous", width: 140)
                    })
                }
                
                Spacer()
                
                if let next = manager.next(for: tip) {
                    Button(action: {
                        tip = next
                    }, label: {
                        ButtonLabel(title: "Next", width: 140)
                    })
                }
            }
        }
    }
}

#Preview {
    TipDetailView(manager: TipsManager.shared, tip: Tip(emoji: "🤔", title: "Reflect on your own emotions", description: "For example, think about how you usually respond to an email that makes you angry. By identifying your own emotions and reactions, you become more mindful and begin to control them."))
}
