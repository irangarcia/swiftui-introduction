import SwiftUI

struct TextEditors: View {
    @State var text: String = "My day was good!"
    
    var body: some View {
        VStack {
            HStack {
                Text("My Journal")
                
                Spacer()
                
                Button("Save") {
                    
                }
            }
            
            TextEditor(text: $text)
                .frame(height: 250)
                .foregroundStyle(.black.opacity(0.8))
                .scrollContentBackground(.hidden) // we cannot change the background color of 'TextEditor' directly, first we have to hide the default background using this code, then apply background.
                .background(.white) // To see this
                .clipShape(.rect(cornerRadii: .init(topLeading: 10, bottomLeading: 10, bottomTrailing: 10, topTrailing: 10)))
                .border(.black)
        }
        .padding()
    }
}

#Preview {
    TextEditors()
}
