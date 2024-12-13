import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let username: String
    let displayName: String
    let followerCount: Int
    let isVerified: Bool
}

struct Models: View {
    @State var users: [UserModel] = [
        UserModel(username: "ir4444n", displayName: "Iran Garcia", followerCount: 27, isVerified: true),
        UserModel(username: "chris-smith", displayName: "Christian Smith", followerCount: 154, isVerified: false),
        UserModel(username: "doe_sam_antha", displayName: "Samantha Doe", followerCount: 720, isVerified: true)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading) {
                            
                            HStack {
                                Text(user.displayName)

                                if user.isVerified {
                                    Image(systemName: "checkmark.seal.fill")
                                        .foregroundStyle(.blue)
                                }
                            }
                            
                            Text("@\(user.username)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                        .padding(.vertical, 10)
                        
                        Spacer()
                        
                        VStack {
                            Text("\(user.followerCount)")
                        
                            Text("Followers")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users")
        }
    }
}

#Preview {
    Models()
}
