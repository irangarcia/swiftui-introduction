import SwiftUI

struct ActionSheets: View {
    @State var showConfirmationDialog = false
    
    var body: some View {
        Button("Share") {
            showConfirmationDialog.toggle()
        }.confirmationDialog(
            "Share on",
            isPresented: $showConfirmationDialog,
            titleVisibility: .visible
        ) {
            Button("Reddit") {}
            Button("LinkedIn") {}
            Button("Facebook") {}
            Button("X") {}
            Button("Bluesky") {}
        } message: {
            Text("Send this to your friends.")
        }
    }
}

#Preview {
    ActionSheets()
}
