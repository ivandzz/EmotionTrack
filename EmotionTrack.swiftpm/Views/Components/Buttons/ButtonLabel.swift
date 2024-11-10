//
//  ButtonLabel.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 07.01.2024.
//

import SwiftUI

struct ButtonLabel: View {
    
    var title: String
    var width: Double
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: width, height: 50)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 5)
            .padding()
    }
}

#Preview {
    ButtonLabel(title: "My button", width: 280)
}
