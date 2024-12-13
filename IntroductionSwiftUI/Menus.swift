import SwiftUI

struct Menus: View {
    var body: some View {
        Menu("Click to open") {
            Button("Open") {}
            
            Button("Close") {}
            
            Button("Save") {}
            
            Menu("More") {
                Button("Report") {
                    
                }
                
                Button("Block") {
                    
                }
            }
        }
    }
}

#Preview {
    Menus()
}
