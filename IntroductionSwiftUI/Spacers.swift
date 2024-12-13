import SwiftUI

struct Spacers: View {
    var body: some View {
//        HStack(spacing: 0) {
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//            
//            // Disappear when being pushed
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.orange)
//        }
//        .padding(.horizontal, 200)
//        .background(Color.indigo)
        
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
                .frame(width: 10)
                .background(.orange)
        }
    }
}

#Preview {
    Spacers()
}
