import SwiftUI

struct Workout: Identifiable, Hashable {
    let id = UUID()
    let name: String
}

struct WorkoutListView: View {
    @State private var things: [Workout] = [
        .init(name: "A"),
        .init(name: "B")
    ]
    @State private var shouldShowAddWorkoutScreen: Bool = false
    var body: some View {
        NavigationStack {
            List(things) {
                NavigationLink($0.name, value: $0)
            }
            .navigationDestination(for: Workout.self) { workout in
                Text(workout.name)
            }
            .navigationBarTitle(Text("Workouts"))
            .toolbar {
                Button {
                    shouldShowAddWorkoutScreen = true
                } label: {
                    Image(systemName: "plus.circle")
                }
            }
            .sheet(
                isPresented: $shouldShowAddWorkoutScreen,
                content: {
                    CreateWorkoutView()
                }
            )
        }
    }
}

#Preview {
    WorkoutListView()
}
