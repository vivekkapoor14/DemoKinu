//
//  ViewController.swift
//  AgumentedDemo
//
//  Created by vivek.kapoor on 2/8/18.
//  Copyright © 2018 a1Technology. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
//        sceneView.delegate = self
//
//        // Show statistics such as fps and timing information
//        sceneView.showsStatistics = true
//
//        // Create a new scene
//        let scene = SCNScene(named: "art.scnassets/ship.scn")!
//
//        // Set the scene to the view
//        sceneView.scene = scene
        addNode()
    }
    func addNode()
    {
                let scene = SCNScene()
        
                var bNode = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.0)
         var pNode = SCNPyramid(width:0.1, height: 0.1, length: 0.1)    //SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.0)
                let planeNode = SCNNode(geometry:bNode)
                planeNode.position = SCNVector3(x: 0, y: 0, z:  -1)
                scene.rootNode.addChildNode(planeNode)
        let parNode = SCNNode(geometry:pNode)
        parNode.eulerAngles =   SCNVector3Make(0,.pi/2,0) //SCNVector3(x: 0, y: -.pi, z: 0)
        parNode.position = SCNVector3(x: 0.2, y: 0.03, z: -1)
        scene.rootNode.addChildNode(parNode)
                sceneView.scene = scene
                self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints,ARSCNDebugOptions.showWorldOrigin]
        
        //cubeNode.pos
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
