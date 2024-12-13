import SwiftUI

struct Shapes: View {
    var body: some View {
//        Circle()
//          .fill(Color.red)
//          .foregroundStyle(.yellow)
//          .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
//          .trim(from: 0.2, to: 1.0)
//          .stroke(Color.purple, lineWidth: 50)
        
//        Ellipse()
//          .trim(from: 0.2, to: 1.0)
//          .frame(width: 200, height: 100)
        
//        Capsule(style: .circular)
            
//        Rectangle()
        
        RoundedRectangle(cornerRadius: 10)
            .fill(.indigo)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    Shapes()
}
