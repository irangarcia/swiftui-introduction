import SwiftUI

struct SafeAreaInsets: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
        }
        .safeAreaInset(edge: .bottom, alignment: .center) {
            Text("Safe Area Insets")
                .frame(maxWidth: .infinity)
                .background(.yellow)
        }
    }
}

#Preview {
    SafeAreaInsets()
}
