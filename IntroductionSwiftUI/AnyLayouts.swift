import SwiftUI

struct AnyLayouts: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Horizontal \(horizontalSizeClass.debugDescription)")
            
            Text("Vertical \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact
                ? AnyLayout(VStackLayout())
                : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
        }
    }
}

#Preview {
    AnyLayouts()
}
