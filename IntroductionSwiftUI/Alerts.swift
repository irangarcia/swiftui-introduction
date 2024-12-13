import SwiftUI

struct Alerts: View {
    @State var showAlert: Bool = false
    
    var body: some View {
        Button {
            showAlert.toggle()
        } label: {
            Text("Show Toast")
        }.alert(Text("Error"), isPresented: $showAlert) {
            Button("Cancel", role: .cancel) {
                
            }
            Button("Finish", role: .destructive) {
                
            }
        } message: {
            Text("Unable to find location")
        }
    }
}

#Preview {
    Alerts()
}
