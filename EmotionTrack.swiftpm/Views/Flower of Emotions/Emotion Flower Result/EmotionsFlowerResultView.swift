//
//  EmotionsFlowerResultView.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 07.01.2024.
//

import SwiftUI

struct EmotionsFlowerResultView: View {
    
    var result: [ColorDetails]
    
    var body: some View {
        VStack {
            List {
                ForEach(result, id: \.self) { color in
                    NavigationLink {
                        ResultDetailsView(color: color)
                    } label: {
                        HStack {
                            Text(color.emoji)
                                .font(.largeTitle)
                            
                            VStack(alignment: .leading) {
                                Text(color.title)
                                    .font(.headline)
                                
                                Text("Tap for details")
                                    .foregroundStyle(.secondary)
                                    .font(.subheadline)
                            }
                        }
                    }
                    .toolbar(.hidden, for: .tabBar)
                }
            }
            .navigationTitle("Your results")
        }
    }
}

#Preview {
    EmotionsFlowerResultView(result: [ColorDetails(emoji: "🤩", title: "Ecstasy", description: "Ecstasy is a state of intense happiness, joy, and satisfaction. It is often described as a feeling of euphoria where you feel as if you are on top of the world. \nIt can be caused by a variety of factors, such as: \n• Spiritual experiences: Prayer, meditation, or other religious practices can lead to a sense of oneness with something greater than oneself, which can cause ecstasy. \n• Creativity: Art, music, and other creative pursuits can give people a sense of fulfillment and satisfaction, which can lead to ecstasy.\n• Love: Deep feelings of love for a partner, child, or other person can lead to ecstasy. \nIt is important to note that ecstasy is a temporary state. It cannot last forever, and it is important not to chase it constantly.")])
}
