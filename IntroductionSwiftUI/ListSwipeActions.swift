import SwiftUI

struct ListSwipeActions: View {
    @State var fruits: [String] = [
        "apple",
        "banana",
        "orange",
        "pear",
        "strawberry"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                    }
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        
                        Button("Junk") {
                            
                        }
                        
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                    }
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    ListSwipeActions()
}
