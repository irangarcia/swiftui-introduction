import SwiftUI

struct UnavailableView: View {
    var body: some View {
        if #available(iOS 17.0, *) {
            ContentUnavailableView(
                "No Internet Connection",
                systemImage: "wifi.slash",
                description: Text("Please connect to the internet and try again.")
            )
            
            ContentUnavailableView.search
        } else {
            // Fallback
        }
    }
}

#Preview {
    UnavailableView()
}
