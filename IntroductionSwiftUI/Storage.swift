import SwiftUI

struct Storage: View {
    @AppStorage("name") var username: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(username ?? "Enter your username")
            
            Button("Save".uppercased()) {
                let name = "Iran Garcia"
                username = name
            }
        }
    }
}

#Preview {
    Storage()
}
