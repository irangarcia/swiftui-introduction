import SwiftUI

struct DarkMode: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    Text("Primary text")
                        .foregroundStyle(.primary)
                    
                    Text("Secondary text")
                        .foregroundStyle(.secondary)
                    
                    Text("Black text")
                        .foregroundStyle(.black)
                    
                    Text("White text")
                        .foregroundStyle(.white)
                    
                    Text("Red text")
                        .foregroundStyle(.red)
                    
                    Text("Global adapted color text")
                        .foregroundStyle(Color("AdaptiveColor"))
                    
                    Text("Local adapted color text")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark mode")
        }
    }
}

#Preview {
    DarkMode()
        .preferredColorScheme(.dark)
}
