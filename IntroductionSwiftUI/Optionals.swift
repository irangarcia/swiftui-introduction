import SwiftUI

struct Optionals: View {
    @State var currentUserID: String? = "iran-garcia"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear {
                loadData()
            }
        }
    }
    
    // If-else
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            
            DispatchQueue.main.asyncAfter(
                deadline: .now() + 3,
                execute: {
                    displayText = "API data. The user is \(userID)."
                    
                    isLoading = false
                }
            )
        } else {
            displayText = "Error. There is no user ID."
        }
    }
    
    // Guard
    func loadAPIData() {
        guard let userID = currentUserID else {
            displayText = "Error. There is no user ID."
            
            return
        }
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(
            deadline: .now() + 3,
            execute: {
                displayText = "API data. The user is \(userID)."
                
                isLoading = false
            }
        )
    }
}

#Preview {
    Optionals()
}
