import SwiftUI

struct SubmitButton: View {
    @State private var text: String = ""
    
    var body: some View {
        TextField("Placeholder...", text: $text)
            .submitLabel(.send)
            .onSubmit {
                print("Submitted: \(text)")
            }
    }
}

#Preview {
    SubmitButton()
}
