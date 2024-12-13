import SwiftUI

struct TextFields: View {
    @State var text: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                TextField("Search for a book", text : $text)
                    .padding(10)
                    .background(.gray.opacity(0.1))
                    .cornerRadius(10)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                
                Button(
                    action: {
                        if textIsAppropriate() {
                            saveText()
                        }
                    },
                    label: {
                        Text("Save".uppercased())
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(textIsAppropriate() ? .blue : .gray)
                            .cornerRadius(10)
                            .foregroundStyle(.white)
                            .font(.headline)
                    }
                ).disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Find a book")
        }
    }
    
    func textIsAppropriate() -> Bool {
        if text.count >= 3 {
            return true
        }
        
        return false
    }
    
    func saveText() {
        dataArray.append(text)
        text = ""
    }
}

#Preview {
    TextFields()
}
