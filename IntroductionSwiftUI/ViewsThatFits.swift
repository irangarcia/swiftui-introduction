import SwiftUI

struct ViewsThatFits: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("Hey hey hey hey hey hey hey hey hey Hey hey hey hey hey hey")
                Text("This is the short version of hey hey hey hey hey")
                Text("This is the smallest version of heys")
            }
        }
        .padding(40)
        .frame(height: 300)
        .padding(16)
    }
}

#Preview {
    ViewsThatFits()
}
