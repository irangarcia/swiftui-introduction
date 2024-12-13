import SwiftUI

struct AsyncImages: View {
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        VStack {
            AsyncImage(url: url) { phase in
                switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .cornerRadius(20)
                    case .failure:
                        Image(systemName: "questionmark")
                        
                    default:
                        Text("Unknown error")
                }
            }
            
            AsyncImage(
                url: url,
                content: { returnedImage in
                    returnedImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                },
                placeholder: {
                    ProgressView()
                }
            )
        }
    }
}

#Preview {
    AsyncImages()
}
