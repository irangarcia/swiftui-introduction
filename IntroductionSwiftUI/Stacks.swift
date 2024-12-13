import SwiftUI

struct Stacks: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 0, content: {
            RoundedRectangle(cornerRadius: 10)
                .fill(.red)
                .frame(width: 150, height: 150)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(.green)
                .frame(width: 100, height: 100)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(.orange)
                .frame(width: 50, height: 50)
            
            Text("VStack")
        })
        .padding()
        .border(.black)

        HStack {
            Text("HStack")
            
            RoundedRectangle(cornerRadius: 10)
                .fill(.red)
                .frame(width: 100, height: 100)

            RoundedRectangle(cornerRadius: 10)
                .fill(.green)
                .frame(width: 100, height: 100)

            RoundedRectangle(cornerRadius: 10)
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
        .padding()
        .border(.black)

        ZStack(alignment: .topTrailing) {
            RoundedRectangle(cornerRadius: 10)
                .fill(.yellow)
                .frame(width: 350, height: 350)

            VStack(alignment: .leading, spacing: 30) {
                RoundedRectangle(cornerRadius: 10) .fill(.red)
                    .frame(width: 100, height: 100)

                RoundedRectangle(cornerRadius: 10)      .fill(.green)
                    .frame(width: 90, height: 90)

                HStack(alignment: .bottom) {
                    RoundedRectangle(cornerRadius: 10) .fill(.pink)
                        .frame(width: 75, height: 75)

                    RoundedRectangle(cornerRadius: 10) .fill(.purple)
                        .frame(width: 50, height: 50)

                    RoundedRectangle(cornerRadius: 10) .fill(.blue)
                        .frame(width: 25, height: 25)
                }
            }
            
            Text("ZStack")
        }
    }
}

#Preview {
    Stacks()
}
