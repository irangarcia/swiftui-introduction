import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func onDeleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 8)
        let fruit2 = FruitModel(name: "Strawberry", count: 3)
        let fruit3 = FruitModel(name: "Grapes", count: 48)
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
            
            self.isLoading = false
        }
        
    }
}

struct ViewModels: View {
    // @StateObject: Use this for creation / init
    // @ObservedObject: Use this for Subviews
    // When the view rerender, the data persists when using @StateObject
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
     
    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruits) { fruit in
                        HStack {
                            Text(fruit.name)

                            Spacer()

                            Text("\(fruit.count)")
                        }
                    }
                    .onDelete(perform: fruitViewModel.onDeleteFruit)
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(
                        destination: RandomScreen(fruitViewModel: fruitViewModel),
                        label: {
                            Image(systemName: "arrow.right")
                        }
                    )
                    
                }
            }
        }
    }
}

struct RandomScreen: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruits) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    ViewModels()
}
