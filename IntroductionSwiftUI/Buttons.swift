import SwiftUI

struct Buttons: View {
    @State var title: String = "Default button. \nNo button was pressed yet."
    
    var body: some View {
        VStack(spacing: 40) {
            Text(title).multilineTextAlignment(.center)
            
            Button("Button 1") {
                self.title = "Button #1 was pressed"
            }
            .tint(.red)
            
            Button(
                action: {
                    self.title = "Button #2 was pressed"
                },
                label: {
                    Text("Button 2".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            Color.blue
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        )
                }
            )
            
            Button(
                action: {
                    self.title = "Button #3 was pressed"
                },
                label: {
                    Circle()
                        .fill(.white)
                        .frame(width: 75, height: 75)
                        .shadow(radius: 10)
                        .overlay(
                            Image(systemName: "heart.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.indigo)
                         )
                }
            )
            
            Button(
                action: {
                    self.title = "Button #4 was pressed"
                },
                label: {
                    Text("Button 4".uppercased())
                        .font(.caption)
                        .bold()
                        .foregroundStyle(.gray)
                        .padding(.horizontal, 10)
                        .padding()
                        .background(
                            Capsule()
                                .stroke(.gray, lineWidth: 2.0)
                        )
                }
            )
        }
    }
}

#Preview {
    Buttons()
}
