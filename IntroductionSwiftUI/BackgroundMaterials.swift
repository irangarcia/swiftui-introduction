import SwiftUI

struct BackgroundMaterials: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(
                .regularMaterial
//              .ultraThinMaterial
//              .thinMaterial
            )
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Color.red
        )
    }
}

#Preview {
    BackgroundMaterials()
}
