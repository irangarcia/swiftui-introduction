import SwiftUI

struct StateWrapper: View {
    @State var count: Int = 0
    let backgroundColor: Color = .indigo
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40) {
                Text("Counter")
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.title2)
                    .underline()
                
                HStack(spacing: 20) {
                    Button(
                        action: {
                            count -= 1
                        },
                        label: {
                            Text("- Decrement")
                                .padding(.horizontal, 10)
                                .padding()
                                .background(
                                    Capsule()
                                        .stroke(.white, lineWidth: 2.0)
                                )
                        }
                    )
                    
                    Button(
                        action: {
                            count += 1
                        },
                        label: {
                            Text("Increment +")
                                .padding(.horizontal, 10)
                                .padding()
                                .background(
                                    Capsule()
                                        .stroke(.white, lineWidth: 2.0)
                                )
                        }
                    )
                }
            }.foregroundStyle(.white)
        }
    }
}

#Preview {
    StateWrapper()
}
