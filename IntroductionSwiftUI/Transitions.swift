import SwiftUI

struct Transitions: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Transition") {
                    withAnimation {
                        showView.toggle()
                    }
                }
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .fill(.white)
                    .shadow(radius: 5)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom))
            }
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    Transitions()
}
