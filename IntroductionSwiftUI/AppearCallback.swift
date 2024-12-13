import SwiftUI

struct AppearCallback: View {
    @State var text: String = "Start text"
    @State var count: Int = 0

    var body: some View {
        NavigationStack {
            ScrollView {
                Text(text)
                
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundStyle(.indigo)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                // Add delay only for demonstration
                DispatchQueue.main.asyncAfter(
                    deadline: .now() + 5,
                    execute: {
                        text = "Appeared"
                    }
                )
            })
            .onDisappear(perform: {
                text = "Disappeared"
            })
            .navigationTitle("Appear callback: \(count)")
        }
    }
}

#Preview {
    AppearCallback()
}
