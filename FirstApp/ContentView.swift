import SwiftUI      // Loads the tool kit

struct ContentView: View {  //creates/build "ContentView".{3-16}
    @State private var tasks = ["Go to the bank", "Visit my folks","Go to the gym"]
    @State private var newTask = "" // whats being typed
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    TextField("Add a task", text: $newTask)
                    Button("Add") {
                        tasks.append(newTask)
                        newTask = ""
                    }
                }
                    
            
                ForEach(tasks, id: \.self) { task in
                    HStack {
                        Image(systemName: "circle")
                        Text(task)
                    }  //Closes HStack
                }      //Closes ForEach
            }          //Closes List
            .navigationTitle("Agenda")
        }              //Closes NavigationStack
    }                  //Closes body
}                      //Closes struct
#Preview {
        ContentView()
    }
