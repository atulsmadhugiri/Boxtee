import SwiftUI

struct BoxteeButton: View {
  var text: String
  var body: some View {
    Text(text)
      .font(Font.custom("Futura Bold", size: 24))
      .foregroundColor(Color(UIColor.systemBackground))
      .frame(width: 340.0, height: 48.0, alignment: .center)
      .background(Color.primary).cornerRadius(5.0)
      .padding(.bottom, 20.0)
  }
}

#Preview {
  BoxteeButton(text: "BUTTON TEXT")
}
