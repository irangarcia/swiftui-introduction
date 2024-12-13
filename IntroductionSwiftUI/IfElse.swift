import SwiftUI

struct IfElse: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button(showCircle ? "Hide Circle" : "Show Circle") {
                showCircle.toggle()
            }
            
            Button(showRectangle ? "Hide Rectangle" : "Show Rectangle") {
                showRectangle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if showCircle && showRectangle {
                Text("Showing three shapes")
                
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 200, height: 100)
            }
            
            Spacer()
        }
    }
}

#Preview {
    IfElse()
}
