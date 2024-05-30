//
//  ColorPicker.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 07.01.2024.
//

import SwiftUI

struct ColorPicker: View {
    
    @Binding var selectedColor: Color
    let colors: [Color] = [.yellow, Color("Lemon"), Color("Canary"), Color("Dark Pastel Green"), Color("Screamin Green"), Color("Mint Green"), .green, Color("Islamic Green"), Color("Dark Sea Green"), Color("Pacific Blue"), .cyan, Color("Columbia Blue"), Color("Medium Blue"), .indigo, Color("Light State Blue"), Color("Deep Magenta"), Color("Pink Flamingo"), Color("Cotton Candy"), Color("Free Speech Red"), Color("Red"), .red, .orange, Color("Texas Rose"), Color("Peach")]
    
    var body: some View {
        VStack {
            Text("Choose color: ")
                .font(.title3)
                .fontWeight(.light)
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.teal)
                    .frame(height: 90)
                    .shadow(radius: 5)
                
                VStack {
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(colors, id: \.self) { color in
                                ZStack {
                                    Circle()
                                        .foregroundStyle(color)
                                        .frame(width: 45, height: 45)
                                        .scaleEffect(color == selectedColor ? 1.1 : 1.0)
                                        .shadow(radius: 5)
                                        .onTapGesture {
                                            selectedColor = color
                                        }
                                }
                            }
                        }
                        .padding()
                        
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ColorPicker(selectedColor: .constant(.yellow))
}
