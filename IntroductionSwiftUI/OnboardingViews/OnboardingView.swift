import SwiftUI

struct OnboardingView: View {
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    @State var onboardingState: Int = 0
    
    // Inputs
    @State var name: String = ""
    @State var age: Double = 18
    @State private var gender: String = ""
    
    // Alert
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    
    let genders = ["Male", "Female", "Non-binary"]
    
    var body: some View {
        ZStack {
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                    
                case 1:
                    addNameSection
                        .transition(transition)
                    
                case 2:
                    addAgeSection
                        .transition(transition)
                    
                case 3:
                    addGenderSection
                        .transition(transition)
                    
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundStyle(.green)
                }
            }
            
            VStack {
                Spacer()
                
                bottomButton
            }
            .padding(30)
        }
        .alert(Text(alertTitle), isPresented: $showAlert) {
        }
    }
}

#Preview {
    OnboardingView().background(.purple)
}

// MARK: Components
extension OnboardingView {
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "Sign up" : onboardingState == 3 ? "Finish" : "Next")
            .font(.headline)
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .onTapGesture {
                handleNextButtonTap()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
            
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
        }
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            TextField("Your name", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Slider(
                value: $age,
                in: 18...100,
                step: 1
            )
            .tint(.white)
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Menu {
                Picker("Gender", selection: $gender) {
                    ForEach(genders, id: \.self) { gender in
                        Text(gender)
                            .tag(gender)
                    }
                }
                .pickerStyle(.inline)
            } label: {
                Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundStyle(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(10)
            }
        }
        .padding(30)
    }
}

// MARK: Functions
extension OnboardingView {
    func handleNextButtonTap() {
        switch onboardingState {
            case 1:
                guard name.count >= 3 else {
                    showAlert(title: "Your name must be at least 3 characters long.")
                    
                    return
                }
            case 3:
                guard gender.count > 1 else {
                    showAlert(title: "Please select a gender before continuing.")
                    
                    return
                }
            default:
                break
            
        }
        
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
            
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender

        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
}
