import SwiftUI

struct Groups: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hey")
            
            Group {
                Text("Hey")

                Text("Hey")
            }
            .foregroundStyle(.green)
        }
        .foregroundStyle(.red)
    }
}

#Preview {
    Groups()
}
