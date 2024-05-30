//
//  TipsListView.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 12.01.2024.
//

import SwiftUI

struct TipsListView: View {
    
    @StateObject var manager: TipsManager = TipsManager.shared
    
    var body: some View {
        NavigationStack {
            VStack {
                MainTitle(title: "Tips for EI development")
                
                List {
                    Text("Emotional intelligence (EI or EQ) is the ability of a person to recognize emotions, understand their impact, and use this information to organize thinking and behavior, which allows you to make more informed decisions and achieve goals faster. \nHere are 7 practical ways to sharpen your EQ.")
                        .font(.body)
                        .padding(.vertical)
                    
                    ForEach(manager.tipList) { tip in
                        NavigationLink {
                            TipsDetailView(manager: manager, tip: tip)
                                .toolbar(.hidden, for: .tabBar)
                        } label: {
                            ListItem(emoji: tip.emoji, title: tip.title)
                        }
                    }
                }
            }
        }
    }
}



#Preview {
    TipsListView()
}
