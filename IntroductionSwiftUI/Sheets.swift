import SwiftUI

struct Sheets: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button(
                action: {
                    showSheet.toggle()
                },
                label: {
                    Text("Open sheet")
                        .foregroundStyle(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(20))
                    
                }
            )
//          .fullScreenCover(isPresented: $showSheet, content: {
//              SecondScreen()
//          })
            .sheet(isPresented: $showSheet, content: {
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button(
                action: {
                    dismiss()
                },
                label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .padding(20)
                }
            )
        }
    }
}

#Preview {
    Sheets()
}
