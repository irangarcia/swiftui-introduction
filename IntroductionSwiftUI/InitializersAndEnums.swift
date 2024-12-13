import SwiftUI

struct InitializersAndEnums: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    let foregroundStyle: Color = .white
    
    // This is not needed, is automatically done by SwiftUI
    // It can be used to do perform customizations
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "Apples"
        } else {
            self.backgroundColor = .orange
            self.title = "Oranges"
        }
        
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(foregroundStyle)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(foregroundStyle)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitializersAndEnums(count: 85, fruit: .orange)
        
        InitializersAndEnums(count: 120, fruit: .apple)
    }
    
}
