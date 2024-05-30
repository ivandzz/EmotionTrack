//
//  EmotionsFlowerView.swift
//  EmotionTrack
//
//  Created by Іван Джулинський on 07.01.2024.
//

import SwiftUI

struct EmotionsFlowerView: View {

    @StateObject var viewModel = EmotionFlowerViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                MainTitle(title: "Color the flower petals with colors that match your emotions")
                
                ColorPicker(selectedColor: $viewModel.selectedColor)
                
                Spacer()
                
                ZStack {
                    Circle()
                        .fill(.teal)
                        .frame(width: 390, height: 390)
                        .shadow(radius: 5)
                    
                    FlowerPetal(color: viewModel.secondPetalColor, rotationAngle: 135, offsetX: 50, offsetY: -50)
                        .onTapGesture {
                            viewModel.secondPetalColor = viewModel.selectedColor
                        }
                    FlowerPetal(color: viewModel.fourthPetalColor, rotationAngle: -135, offsetX: 50, offsetY: 50)
                        .onTapGesture {
                            viewModel.fourthPetalColor = viewModel.selectedColor
                        }
                    FlowerPetal(color: viewModel.sixthPetalColor, rotationAngle: -45, offsetX: -50, offsetY: 50)
                        .onTapGesture {
                            viewModel.sixthPetalColor = viewModel.selectedColor
                        }
                    FlowerPetal(color: viewModel.eighthPetalColor, rotationAngle: 45, offsetX: -50, offsetY: -50)
                        .onTapGesture {
                            viewModel.eighthPetalColor = viewModel.selectedColor
                        }
                    
                    FlowerPetal(color: viewModel.firstPetalColor, rotationAngle: 90, offsetX: 0, offsetY: -50)
                        .onTapGesture {
                            viewModel.firstPetalColor = viewModel.selectedColor
                        }
                    FlowerPetal(color: viewModel.thirdPetalColor, rotationAngle: 0, offsetX: 50, offsetY: 0)
                        .onTapGesture {
                            viewModel.thirdPetalColor = viewModel.selectedColor
                        }
                    FlowerPetal(color: viewModel.fifthPetalColor, rotationAngle: 90, offsetX: 0, offsetY: 50)
                        .onTapGesture {
                            viewModel.fifthPetalColor = viewModel.selectedColor
                        }
                    FlowerPetal(color: viewModel.seventhPetalColor, rotationAngle: 0, offsetX: -50, offsetY: 0)
                        .onTapGesture {
                            viewModel.seventhPetalColor = viewModel.selectedColor
                        }
                    
                    Circle()
                        .fill(.yellow)
                        .frame(width: 100, height: 100)
                        .shadow(radius: 5)
                }
                
                Spacer()
                
                if viewModel.result.contains(.white) {
                    Text("Choose a color for all petals")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(width: 280, height: 50)
                        .padding()
                } else {
                    NavigationLink {
                        EmotionsFlowerResultView(result: viewModel.result.removingDuplicates())
                    } label: {
                        ButtonLabel(title: "Done", width: 280)
                    }
                }
            }
        }
        .alert("Welcome!", isPresented: $viewModel.showingAlert) { }
    message: {
        Text("A person can experience a large number of emotions. Understanding and accepting your emotions is the first step to learning how to manage them. The Emotion Flower will help you better understand your emotions and your emotional state.")
    }
        
    }
    
}

#Preview {
    EmotionsFlowerView()
}
