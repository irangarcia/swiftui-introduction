import SwiftUI

struct TapGesture: View {
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundStyle(isSelected ? .green : .red)
            
            Button(
                action: {
                    isSelected.toggle()
                },
                label: {
                    Text("Click me")
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(.indigo)
                        .cornerRadius(10)
                }
            )
            
            Text("Tap Gesture")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(.indigo)
                .cornerRadius(10)
//              .onTapGesture {
//                  isSelected.toggle()
//              }
                .onTapGesture(count: 5, perform: {
                    isSelected.toggle()
                })
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TapGesture()
}
