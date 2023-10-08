import Foundation
import QuartzCore
import SceneKit

func getScene() -> SCNScene {
  let scene = SCNScene(named: "SceneKitAssets.scnassets/shirt.scn")!

  let cameraNode = SCNNode()
  cameraNode.camera = SCNCamera()
  scene.rootNode.addChildNode(cameraNode)

  cameraNode.position = SCNVector3(x: 0, y: 0, z: 15)

  let lightNode = SCNNode()
  lightNode.light = SCNLight()
  lightNode.light!.type = .omni
  lightNode.position = SCNVector3(x: 0, y: 10, z: 15)
  scene.rootNode.addChildNode(lightNode)

  let ambientLightNode = SCNNode()
  ambientLightNode.light = SCNLight()
  ambientLightNode.light!.type = .ambient
  ambientLightNode.light!.color = UIColor.darkGray
  scene.rootNode.addChildNode(ambientLightNode)

  let backlight = SCNNode()
  backlight.light = SCNLight()
  backlight.light!.type = .omni
  backlight.position = SCNVector3(x: 0, y: 10, z: -15)
  scene.rootNode.addChildNode(backlight)

  let shirt = scene.rootNode.childNode(withName: "hanger reference", recursively: true)!

  shirt.runAction(SCNAction.rotateBy(x: 0, y: 60000, z: 0, duration: 40000), forKey: "rot")

  scene.rootNode.childNode(withName: "T_Shirt", recursively: true)?.geometry?.materials[0].diffuse
    .contents = UIColor(red: 1, green: 1, blue: 1, alpha: 1.00)

  scene.rootNode.camera?.wantsHDR = true

  return scene
}
