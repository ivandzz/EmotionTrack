//
//  MainTitle.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 07.01.2024.
//

import SwiftUI

struct MainTitle: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.light)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    MainTitle(title: "Some Title")
}
