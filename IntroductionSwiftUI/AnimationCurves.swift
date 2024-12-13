import SwiftUI

struct AnimationCurves: View {
    @State var isAnimating: Bool = false
    let timing: Double = 5.0
    
    var body: some View {
        VStack {
            Button("Animate") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 100, height: 100)
                .animation(
                    .linear(duration: timing),
                    value: isAnimating
                )
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 100, height: 100)
                .animation(
                    .easeIn(duration: timing),
                    value: isAnimating
                )
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 100, height: 100)
                .animation(
                    .easeInOut(duration: timing),
                    value: isAnimating
                )
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 100, height: 100)
                .animation(
                    .easeOut(duration: timing),
                    value: isAnimating
                )
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 100, height: 100)
                .animation(
                    .spring(
                        response: 0.5,
                        dampingFraction: 0.7,
                        blendDuration: 1.0
                    ),
                    value: isAnimating
                )
        }
    }
}

#Preview {
    AnimationCurves()
}
