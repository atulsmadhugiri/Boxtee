import SwiftUI

struct BoxteeHeader: View {
  var body: some View {
    HStack(
      alignment: .center,
      content: {
        Image("atul")
          .resizable()
          .frame(width: 48.0, height: 48.0)
          .cornerRadius(5.0)

        Text("BOXTEE")
          .foregroundColor(Color(UIColor.label))
          .font(Font.custom("Futura Bold", size: 34.0))
      })
  }
}

#Preview {
  BoxteeHeader()
}
