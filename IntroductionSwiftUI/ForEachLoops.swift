import SwiftUI

struct ForEachLoops: View {
    let data: [String] = ["Hey", "Hello", "Ciao", "Hola"]
        
    var body: some View {
        HStack {
            ForEach(0..<10) { index in
                Text("\(index)")
            }
        }
        
        HStack {
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    ForEachLoops()
}
