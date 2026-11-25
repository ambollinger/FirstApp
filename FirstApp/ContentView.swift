import SwiftUI      // Loads the tool kit

struct ContentView: View {  //creates/build "ContentView".{3-16}
    @State private var tasks = ["Go to the bank", "Visit my folks","Go to the gym"]
    
    var body: some View {
        NavigationStack {
            List {
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
