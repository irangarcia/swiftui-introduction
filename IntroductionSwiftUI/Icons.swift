import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
//          .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .foregroundStyle(.yellow)
//          .font(.largeTitle)
//          .font(.system(size: 200))
            .frame(width: 300, height: 300)
//          .clipped()
    }
}

#Preview {
    Icons()
}
