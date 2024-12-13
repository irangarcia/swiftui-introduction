import SwiftUI

struct ExtractingFunctions: View {
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(
                action: buttonPressed,
                label: {
                    Text("Press me" )
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .background(.black)
                        .cornerRadius(10)
                }
            )
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractingFunctions()
}
