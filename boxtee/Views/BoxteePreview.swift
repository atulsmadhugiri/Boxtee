import QuartzCore
import SceneKit
import SwiftUI

struct BoxteePreview: View {
  var scene = getScene()
  var body: some View {
    SceneView(
      scene: scene, pointOfView: scene.rootNode.childNode(withName: "camera", recursively: true),
      options: [
        .allowsCameraControl, .jitteringEnabled, .rendersContinuously, .autoenablesDefaultLighting,
      ])
  }
}

#Preview {
  BoxteePreview()
}
