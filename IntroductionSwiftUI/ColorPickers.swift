import SwiftUI

struct ColorPickers: View {
    @State var selectedColor: Color = .red
    
    var body: some View {
        ZStack {
            selectedColor.ignoresSafeArea()
            
            ColorPicker(
                "Change the background color",
                selection: $selectedColor,
                supportsOpacity: true
            )
            .foregroundStyle(.white)
            .padding()
            .background(.black)
            .cornerRadius(10)
            .padding()
        }
    }
}

#Preview {
    ColorPickers()
}
