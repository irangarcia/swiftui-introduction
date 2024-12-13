import SwiftUI

struct Steppers: View {
    @State var value: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Stepper(
                "Stepper: \(value)",
                value: $value
            )
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Change the width") {
                onIncrementWidth(amount: 10)
            } onDecrement: {
                onIncrementWidth(amount: -10)
            }
        }
        .padding(50)
    }
    
    func onIncrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    Steppers()
}
