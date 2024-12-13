import SwiftUI

struct ScrollViews: View {
    var body: some View {
//        ScrollView(
//            .vertical,
//            showsIndicators: true,
//            content: {
//                VStack {
//                    ForEach(0..<50) { index in
//                        Rectangle()
//                            .fill(.blue)
//                            .frame(height: 200)
//                    }
//                }
//            }
//        )
        
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(
                        .horizontal,
                        showsIndicators: false,
                        content: {
                            HStack {
                                ForEach(0..<20) { index in
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(.white)
                                        .frame(width: 200, height: 150)
                                        .shadow(radius: 10)
                                        .padding(10)
                                }
                            }
                        }
                    )
                    
                }
            }
        }
    }
}

#Preview {
    ScrollViews()
}
