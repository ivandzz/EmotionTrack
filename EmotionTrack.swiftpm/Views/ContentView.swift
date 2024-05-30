import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            EmotionsFlowerView()
                .tabItem {
                    Label("Flower of Emotions", systemImage: "wand.and.stars")
                }
            EmotionalTestView()
                .tabItem {
                    Label("EI Test", systemImage: "list.bullet.clipboard")
                }
            ExercisesListView()
                .tabItem {
                    Label("Exercises", systemImage: "person.fill.questionmark")
                }
            TipsListView()
                .tabItem {
                    Label("Tips", systemImage: "lightbulb")
                }
        }
        .tint(.blue)
    }
}
