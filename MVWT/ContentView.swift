import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Train")
                .tabItem {
                    Label("Train", systemImage: "figure.strengthtraining.traditional")
                }
            WorkoutListView()
                .tabItem {
                    Label("Workouts", systemImage: "dumbbell")
                }
            Text("Stats")
                .tabItem {
                    Label("Stats", systemImage: "chart.xyaxis.line")
                }
        }
    }
}

#Preview {
    ContentView()
}
