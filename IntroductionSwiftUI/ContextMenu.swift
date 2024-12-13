import SwiftUI

struct ContextMenu: View {
    @State var backgroundColor: Color = .indigo
    
    var body: some View {
        VStack(alignment: .leading,spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            
            Text("Press and hold")
                .font(.headline)
            
            Text("And you'll see a Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(30)
        .contextMenu() {
            Button(
                action: {
                    backgroundColor = .red
                },
                label: {
                    HStack {
                        Text("Like post")
                        
                        Image(systemName: "heart.fill")
                    }
                }
            )
            
            Button(
                action: {
                    backgroundColor = .orange
                },
                label: {
                    Label(
                        "Share post",
                        systemImage: "arrow.up.circle"
                    )
                }
            )
            
            Button(
                action: {
                    backgroundColor = .yellow
                },
                label: {
                    Text("Report")
                }
            )
        }
    }
}

#Preview {
    ContextMenu()
}
