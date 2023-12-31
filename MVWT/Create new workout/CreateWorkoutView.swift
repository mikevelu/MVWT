import SwiftUI

struct Exercise: Hashable {
    var name: String
    var selected: Bool
}

struct CreateWorkoutView: View {
    @State var exercises: [Exercise] = [
        .init(name: "BSS", selected: false),
        .init(name: "Bench Press", selected: false),
        .init(name: "Face Pulls", selected: false),
        .init(name: "Military Press", selected: false),
        .init(name: "Pull Down", selected: false),
        .init(name: "Row", selected: false),
        .init(name: "Trap Bar Deadlift", selected: false)
    ]
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Exercises")) {
                    ForEach(exercises, id: \.self) { exercise in
                        HStack {
                            Image(systemName: "plus.circle")
                            Text(exercise.name)
                        }.onTapGesture {
                            print("TAPPY TAP TAP BITCH")
                        }
                        
                    }
                }
                .headerProminence(.increased)
            }
            .environment(\.editMode, .constant(EditMode.active))
            .navigationBarTitle(Text("Workouts"))
            //            .onChange(of: selection) { oldValue, newValue in
            //                guard oldValue != newValue else { return }
            //                let selectionAsArray = Array(selection)
            //
            //                let selected = exercises.filter { exercise in
            //                    selectionAsArray.contains { selectedExercise in
            //                        exercise == selectedExercise
            //                    }
            //                }.sorted()
            //
            //                let remaining = exercises.filter { exercise in
            //                    !selected.contains { selectedExercise in
            //                        exercise == selectedExercise
            //                    }
            //                }.sorted()
            //
            //
            //                withAnimation {
            //                    exercises = selected + remaining
            //                }
            //            }
        }
    }
}

#Preview {
    CreateWorkoutView()
}


//final class NewTing: View {
//    var body: some View {
//        HStack {
//            Image(systemName: "plus.circle")
//            Text($0)
//        }.onTapGesture {
//            print("TAPPY TAP TAP BITCH")
//        }
//    }
//}
