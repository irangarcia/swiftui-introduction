import SwiftUI

struct Grids: View {
    let columns: [GridItem] = [
//      GridItem(.fixed(50)),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
//      Will put as many items as it can
//      GridItem(.adaptive(minimum: 40, maximum: 300))
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.brown)
                .frame(height: 300)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                // It could be headers or footers
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(
                        header:
                            Text("Section 1")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .background(.blue),
                        content: {
                            ForEach(0..<21) { index in
                                Rectangle()
                                    .fill(.orange)
                                    .frame(height: 150)
                            }
                        }
                    )
                    
                    Section(
                        header:
                            Text("Section 2")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .background(.blue),
                        content: {
                            ForEach(0..<21) { index in
                                Rectangle()
                                    .fill(.green)
                                    .frame(height: 150)
                            }
                        }
                    )
                }
                
            )
        }
    }
}

#Preview {
    Grids()
}
