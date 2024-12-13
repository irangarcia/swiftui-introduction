import SwiftUI

struct Animations: View {
    @State var isAnimated: Bool = false

    var body: some View {
        VStack {
            Button("Animate") {
                isAnimated.toggle()
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .green : .red)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(.degrees(isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(
                    Animation
                        .default
//                      .repeatCount(5, autoreverses: false)
                        .repeatForever(),
                    value: isAnimated
                )

            Spacer()
        }
    }
}

#Preview {
    Animations()
}
