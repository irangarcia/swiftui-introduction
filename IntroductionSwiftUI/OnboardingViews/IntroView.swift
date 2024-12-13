import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            RadialGradient(
                colors: [.purple, .blue],
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height
            )
            .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
            } else {
                OnboardingView()
            }
        }
        
    }
}

#Preview {
    IntroView()
}
