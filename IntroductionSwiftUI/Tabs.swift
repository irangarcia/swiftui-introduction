import SwiftUI

struct Tabs: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab(value: 0) {
                HomeView(selectedTab: $selectedTab)
            } label: {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            Tab(value: 1) {
                Text("Messages")
            } label: {
                Image(systemName: "message.fill")
                Text("Messages")
            }
            
            Tab(value: 2) {
                Text("Settings")
            } label: {
                Image(systemName: "gearshape.fill")
                Text("Settings")
            }
        }
    }
}

#Preview {
    Tabs()
}

struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.indigo
            
            VStack {
                Text("Home")
                    .foregroundStyle(.white)
                
                Button(
                    action: {
                        selectedTab = 1
                    },
                    label : {
                        Text("Go to Messages")
                            .font(.headline)
                            .padding()
                            .padding(.horizontal)
                            .background(.white)
                            .cornerRadius(10)
                    }
                )
            }
        }
    }
}
