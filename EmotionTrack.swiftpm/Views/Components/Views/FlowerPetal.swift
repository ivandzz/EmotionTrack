//
//  FlowerPetal.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 07.01.2024.
//

import SwiftUI

struct FlowerPetal: View {
    var color: Color
    var rotationAngle: Double
    var offsetX: Double
    var offsetY: Double
    
    var body: some View {
        Ellipse()
            .fill(color)
            .frame(width: 200, height: 50)
            .rotationEffect(Angle(degrees: rotationAngle))
            .offset(x: offsetX, y: offsetY)
    }
}

#Preview {
    FlowerPetal(color: .red, rotationAngle: 0, offsetX: 0, offsetY: 0)
}
