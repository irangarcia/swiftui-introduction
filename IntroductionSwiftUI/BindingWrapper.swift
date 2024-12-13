import SwiftUI

struct BindingWrapper: View {
    @State var backgroundColor: Color = .green
    @State var title: String = "Informative Button"
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .font(.title)
                    .foregroundStyle(.white)
                
                ButtonView(
                    backgroundColor: $backgroundColor,
                    title: $title
                )
            }
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = .blue
    @Binding var title: String
    
    var body: some View {
        Button(
            action: {
                backgroundColor = .yellow
                buttonColor = .red
                title = "Destructive Button"
            },
            label: {
                Text("Button")
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(buttonColor)
                    .cornerRadius(10)
            }
        )
    }
}


#Preview {
    BindingWrapper()
}
