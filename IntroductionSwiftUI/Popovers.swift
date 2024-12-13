import SwiftUI

struct Popovers: View {
    @State var isPresented: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            Button("Click") {
                isPresented.toggle()
            }
            .foregroundStyle(.white)
            .padding(20)
            .background(
                RoundedRectangle(cornerRadius: 20).background(.black)
            )
            .popover(
                isPresented: $isPresented,
                attachmentAnchor: .point(.top),
                arrowEdge: .bottom
            ) {
                ZStack {
                    Color.white.ignoresSafeArea()
                    
                    Text("Hello")
                }
                .presentationCompactAdaptation(
                    .popover
//                  .sheet
//                  .fullScreenCover
                )
            }
        }
    }
}

#Preview {
    Popovers()
}
