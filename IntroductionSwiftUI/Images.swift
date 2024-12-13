import SwiftUI

struct Images: View {
    var body: some View {
        Image("nyjets")
            .resizable()
//          .scaledToFill()
//          .clipped()
            .scaledToFit()
            .foregroundStyle(.red)
            .frame(width: 300, height: 300)
//          .clipShape(.circle)
    }
}

#Preview {
    Images()
}
