import SwiftUI

struct Sliders: View {
    @State var value: Double = 0.10
    @State var rangeValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating")
            
            Text(String(format: "%.1f", value))
            
            Slider(value: $value)
                .tint(.red)
            
            Text("Rating \(rangeValue)")
                .foregroundStyle(color)
            
            Slider(
                value: $rangeValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Rating")
                }
            )
            
        }
        .padding(50)
    }
}

#Preview {
    Sliders()
}
