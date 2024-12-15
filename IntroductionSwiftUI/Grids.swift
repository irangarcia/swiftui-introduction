import SwiftUI

struct Grids: View {
    var body: some View {
        Grid(
            alignment: .leading,
            horizontalSpacing: 10,
            verticalSpacing: 20
        ) {
            ForEach(0..<4) { rowIndex in
                GridRow {
                    ForEach(0..<4) { columnIndex in
                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                        
                        if cellNumber == 7 {
                            EmptyView()
                        } else {
                            cell(int: cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
                        }
                    }
                }
            }
         }
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.indigo)
            .cornerRadius(10)
    }
}

#Preview {
    Grids()
}
