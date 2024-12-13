import SwiftUI

struct PageTabs: View {
    let icons: [String] = [
        "heart.fill",
        "globe",
        "house.fill",
        "person.fill"
    ]
    
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .foregroundStyle(.white)
                    .padding()
            }
        }
        .background(.indigo)
        .frame(height: 350)
        .tabViewStyle(.page)
    }
}

#Preview {
    PageTabs()
}
