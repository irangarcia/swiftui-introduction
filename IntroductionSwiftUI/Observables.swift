import SwiftUI

@Observable class ObservableViewModel {
    var title: String = "Hello, World!"
    
    @ObservationIgnored var value: String = "Some unused title"
}

struct Observables: View {
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "Hola, Mundo!"
            }
            
            ChildView(viewModel: viewModel)
            
            ThirdView()
        }
        .environment(viewModel)
    }
}

struct ChildView: View {
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Olá, mundo"
        }
    }
}

struct ThirdView: View {
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Bonjour, le monde"
        }
    }
}

#Preview {
    Observables()
}
