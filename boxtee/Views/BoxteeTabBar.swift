import SwiftUI

struct BoxteeTabBar: View {
  var body: some View {
    TabView {
      Text("Design").tabItem { Label("Design", systemImage: "paintpalette") }
      Text("Explore").tabItem { Label("Explore", systemImage: "lightbulb") }
      Text("Cart").tabItem { Label("Cart", systemImage: "cart") }
      Text("Orders").tabItem { Label("Orders", systemImage: "box.truck") }
      Text("Preferences").tabItem { Label("Preferences", systemImage: "gear") }
    }
  }
}

#Preview {
  BoxteeTabBar()
}
