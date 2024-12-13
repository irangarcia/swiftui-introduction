import SwiftUI

struct Lists: View {
    @State var fruits: [String] = [
        "apple",
        "banana",
        "orange",
        "pear",
        "strawberry"
    ]
    
    @State var veggies: [String] = [
        "tomato", 
        "potato", 
        "carrot"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            
                            Image(systemName: "flame.fill")
                            
                        }
                        .foregroundStyle(.orange)
                    
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
            }
            .listStyle(DefaultListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    addButton
                }
            }
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func add() {
        fruits.append("Coconut")
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    Lists()
}
