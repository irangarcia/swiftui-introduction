import SwiftUI

struct ButtonStyles: View {
    var body: some View {
        Button("Mini Borderless") {
            
        }
        .frame(height: 55)
        .controlSize(.mini)
        .buttonStyle(.borderless)

        
        Button("Small Bordered") {
            
        }
        .frame(height: 55)
        .controlSize(.small)
        .buttonStyle(.bordered)
        
        Button("Regular Plain") {
            
        }
        .frame(height: 55)
        .controlSize(.regular)
        .buttonStyle(.plain)

        Button("Large Automatic") {
            
        }
        .frame(height: 55)
        .controlSize(.large)
        .buttonStyle(.automatic)
        
        Button("Extra Large Bordered Prominent") {
            
        }
        .frame(height: 55)
        .controlSize(.extraLarge)
        .buttonStyle(.borderedProminent)
        
    }
}

#Preview {
    ButtonStyles()
}
