import SwiftUI

struct Switches: View {
    @State var isOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                
                Text(isOn ? "Online" : "Offline")
            }
            
            Toggle(
                isOn: $isOn,
                label: {
                    Text("Change status")
                }
            )
            .tint(.indigo)
            
            Spacer()
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    Switches()
}
