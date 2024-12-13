import SwiftUI

struct Badges: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab(value: 0) {
                Color.red
            } label: {
                Image(systemName: "bell.fill")
                Text("Notifications")
            }
            .badge(5)
            
            Tab(value: 1) {
                Color.orange
            } label: {
                Image(systemName: "message.fill")
                Text("Messages")
            }
            .badge(25)
            
            Tab(value: 2) {
                Color.yellow
            } label: {
                Image(systemName: "heart.fill")
                Text("Likes")
            }
            .badge("+99")
        }
    }
}

#Preview {
    Badges()
}
