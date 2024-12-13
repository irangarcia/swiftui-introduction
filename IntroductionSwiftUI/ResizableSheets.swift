import SwiftUI

struct ResizableSheets: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        Button("Open Sheet") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MySheetView()
                // Resizable
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.hidden)
                .interactiveDismissDisabled(true)
        }
    }
}

struct MySheetView: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
                
            Text("Hello, World!")
        }
    }
}

#Preview {
    ResizableSheets()
}
