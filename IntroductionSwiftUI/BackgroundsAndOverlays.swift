import SwiftUI

struct BackgroundsAndOverlays: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width: 100, height: 100)
//            .background(
//                Color.red
//                LinearGradient()
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
//            )
//            .frame(width: 120, height: 120)
//            .background(
//                Circle().fill(LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
//            )
        
//        Circle()
//            .fill(.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 110, height: 110)
//            )
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height:50),
//                alignment: .topTrailing
//            )
//            .background(
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150),
//                alignment: .bottomTrailing
//            
//            )
        
        Image(systemName: "heart.fill")
            .font(.system(size: 50))
            .foregroundStyle(.white)
            .background(
                Circle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                    .shadow(color: .red, radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("2")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                            )
                            .shadow(color: .blue, radius: 5, x: 2, y: 2),
                        alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundsAndOverlays()
}
