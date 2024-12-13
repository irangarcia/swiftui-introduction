import SwiftUI

struct Padding: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(.yellow)
//            .padding(.vertical, 10)
//            .padding(.horizontal, 20)
//            .background(.blue)
        
        VStack(alignment: .leading) {
            Text("Hello, world")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
                
            Text("This is the description of what I will do on the screen. It is multiple lines of text.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 0,
                    y: 10
                )
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    Padding()
}
