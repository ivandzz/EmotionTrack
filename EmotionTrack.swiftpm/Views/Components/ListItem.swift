//
//  ListItem.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 18.02.2024.
//

import SwiftUI

struct ListItem: View {
    
    var emoji: String
    
    var title: String
    
    var body: some View {
        HStack {
            Text(emoji)
                .font(.largeTitle)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                
                Text("Tap for details")
                    .foregroundStyle(.secondary)
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    ListItem(emoji: "💖", title: "Sample Item")
}
