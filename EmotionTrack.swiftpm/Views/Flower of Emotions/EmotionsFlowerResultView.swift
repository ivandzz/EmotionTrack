//
//  EmotionsFlowerResultView.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 07.01.2024.
//

import SwiftUI

struct EmotionsFlowerResultView: View {
    
    var result: [Color]
    
    var body: some View {
        VStack {
            List {
                ForEach(result, id: \.self) { color in
                    let colorDetails = getColorDetails(for: color)
                    
                    NavigationLink {
                        ResultDetailsView(color: color, colorDetails: colorDetails)
                    } label: {
                        HStack {
                            Text(colorDetails.emoji)
                                .font(.largeTitle)
                            
                            VStack(alignment: .leading) {
                                Text(colorDetails.title)
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
    EmotionsFlowerResultView(result: [.red])
}
