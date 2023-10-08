import AuthenticationServices
import SwiftUI

struct BoxteeWelcome: View {
  var body: some View {
    VStack {
      BoxteeHeader()
      BoxteePreview()
      SignInWithAppleButton(
        onRequest: { request in
          print("UNIMPLEMENTED")
        },
        onCompletion: { result in
          print("UNIMPLEMENTED")
        }
      ).frame(height: 60).padding()
    }
  }
}

#Preview {
  BoxteeWelcome()
}
