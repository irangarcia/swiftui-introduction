import SwiftUI

struct Pickers: View {
    @State var selection: String = "Most recent"
    @State var filterOptions: [String] = ["Most recent", "Most popular", "Most liked" ]
    
    var body: some View {
        VStack {
            List {
                Picker(selection: $selection) {
                    ForEach(filterOptions, id: \.self) { option in
                        Text(option)
                            .tag(option)
                    }
                }
                label: {
                    HStack {
                        Text("Filter: ")
                        Text(selection)
                    }
                }
                .pickerStyle(.segmented)
            }
            
            Menu {
               Picker("Filter", selection: $selection) {
                   ForEach(filterOptions, id: \.self) { option in
                       HStack {
                           Text(option)
                           Image(systemName: "heart.fill")
                       }
                       .tag(option)
                   }
               }
               .pickerStyle(.inline)
               } label: {
                   HStack {
                       Text("Filter:")
                       Text(selection)
                   }
                   .font(.headline)
                   .foregroundColor(.white)
                   .padding()
                   .padding(.horizontal)
                   .background(.blue)
                   .cornerRadius(10)
                   .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
               }
        }
    }
}

#Preview {
    Pickers()
}
