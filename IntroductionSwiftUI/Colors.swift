import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//              Color.primary
                
//              Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
                
//              Color(UIColor.secondarySystemBackground)
                
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color("CustomColor").opacity(0.2), radius: 10, x: -15, y: -15)
    }
}

#Preview {
    Colors()
}
