import SwiftUI

struct ExtractingSubviews: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Oranges", count: 15)
            
            MyItem(title: "Bananas", count: 12)
            
            MyItem(title: "Apples", count: 8)
        }
    }
}

#Preview {
    ExtractingSubviews()
}

struct MyItem: View {
    let title: String
    let count: Int
    
    var body: some View {
        VStack {
            Text("\(count)")
            
            Text(title)
        }
        .padding()
        .background()
        .cornerRadius(10)
    }
}
