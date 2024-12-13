import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var data: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.data.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjects: View {
    @StateObject var viewModel: EnvironmentViewModel = .init()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.data, id: \.self) { item in
                    NavigationLink(destination: DetailView(selectedItem: item)) {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink(destination: NestedView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct NestedView: View {
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.data, id: \.self) { item in
                        Text(item)
                    }
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    EnvironmentObjects()
}
