import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Hello, World! This is an example to be able to show `multilineTextAlignment`".uppercased())
//          .font(.body)
//          .fontWeight(.medium)
//          .bold()
//          .italic()
//          .underline(true, color: .red)
//          .strikethrough(true, color: .blue)
            .font(.system(size: 24, weight: .semibold, design: .monospaced))
            .baselineOffset(20.0)
            .kerning(4)
            .multilineTextAlignment(.leading)
            .foregroundStyle(.red)
            .frame(width: 300, height: 500, alignment: .center)
    }
}

#Preview {
    TextView()
}
