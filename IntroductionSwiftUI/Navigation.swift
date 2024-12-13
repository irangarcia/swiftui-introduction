import SwiftUI

struct Navigation: View {
    var platforms: [Platform] = [
        .init(name: "Xbox", image: "xbox.logo", color: .green),
        .init(name: "Playstation", image: "playstation.logo", color: .indigo),
        .init(name: "PC", image: "pc", color: .pink),
        .init(name: "Mobile", image: "iphone", color: .mint),
    ]
    
    var games: [Game] = [
        .init(name: "God of War", rating: "98"),
        .init(name: "Ghosts of Tsushima", rating: "97"),
        .init(name: "S.T.A.L.K.E.R 2", rating: "81")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section("Platforms") {
                    ForEach(platforms, id: \.name) { platform in
                        NavigationLink(value: platform) {
                            Label(platform.name, systemImage: platform.image)
                                .foregroundStyle(platform.color)
                        }
                        
                    }
                }
                
                Section("Games") {
                    ForEach(games, id: \.name) { game in
                        NavigationLink(value: game) {
                            Text(game.name)
                        }
                    }
                }
            }
            .navigationTitle("Gaming")
            .navigationDestination(for: Platform.self) { platform in
                ZStack {
                    platform.color.ignoresSafeArea()
                    
                    Label(platform.name, systemImage: platform.image)
                        .font(.largeTitle)
                        .bold()
                }
            }
            .navigationDestination(for: Game.self) { game in
                Text("\(game.name) - \(game.rating)")
                    .font(.largeTitle)
                    .bold()
            }
        }
    }
}

#Preview {
    Navigation()
}

struct Platform: Hashable {
    let name: String
    let image: String
    let color: Color
}

struct Game: Hashable {
   let name: String
   let rating: String
}
