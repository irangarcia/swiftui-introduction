import SwiftUI

struct FocusStates: View {
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    @State private var username: String = ""
//    @FocusState private var usernameIsFocused: Bool
    
    @State private var password: String = ""
//    @FocusState private var passwordIsFocused: Bool
    @FocusState private var fieldFocused: OnboardingField?
    
    var body: some View {
        VStack(spacing: 20) {
            TextField(
                "Add your name",
                text: $username
            )
            .focused($fieldFocused, equals: .username)
            .padding(.leading)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.gray.brightness(0.3))
            .cornerRadius(10)
            
            SecureField(
                "Password",
                text: $password
            )
            .focused($fieldFocused, equals: .password)
            .padding(.horizontal)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.gray.brightness(0.3))
            .cornerRadius(10)
            
            
            Button("Sign up") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("Sign up")
                } else if usernameIsValid {
                    fieldFocused = .password
                } else {
                    fieldFocused = .username
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding(40)
        .onAppear {
            DispatchQueue.main.asyncAfter(
                deadline: .now() + 5,
                execute: {
                    fieldFocused = .username
                }
            )
        }
    }
}

#Preview {
    FocusStates()
}
