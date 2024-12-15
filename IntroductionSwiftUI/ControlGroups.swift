import SwiftUI

struct ControlGroups: View {
    var body: some View {
        Menu("Click") {
            ControlGroup {
                Button("😔") {}
                
                Button("😐") {}
                
                Button("😄") {}
            }
            
            Button("Two") {}
            
            Menu("Three") {
                Button("Um") {}
                
                Button("Dois") {}
                
                Button("Três") {}
            }
        }
    }
}

#Preview {
    ControlGroups()
}
