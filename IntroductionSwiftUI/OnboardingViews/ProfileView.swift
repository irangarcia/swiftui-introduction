import SwiftUI

struct ProfileView: View {
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text(currentUserName ?? "Your name")
            
            Text("This user is \(currentUserAge ?? 18) years old.")
            
            Text("Gender: \(currentUserGender ?? "Unknown")")
            
            Text("Sign out")
                .foregroundStyle(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title2)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
    
    func signOut() {
        currentUserAge = nil
        currentUserName = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
