//
//  Ramp.swift
//  Ramp-Up
//
//  Created by Johnny Nicholson on 11/11/17.
//  Copyright © 2017 Johnny Nicholson. All rights reserved.
//

import Foundation
import SceneKit

class Ramp {
    // Grabs a specific child object of the pipe.scn file. This child Node will be the pipe graphic itself.
    // The graphic will then be displayed on the created scene for the RampPickerVC
    class func getPipe() -> SCNNode {
        let obj = SCNScene(named: "art.scnassets/pipe.scn")
        let node = obj?.rootNode.childNode(withName: "pipe", recursively: true)!
        node?.localRotate(by: SCNVector4Make(0, 1, 1, 0))
        node?.scale = SCNVector3Make(0.0022, 0.0022, 0.0022)
        node?.position = SCNVector3Make(-1, 0.7, -1)
        return node!
    }
    
    class func getPyramid() -> SCNNode {
        let obj = SCNScene(named: "art.scnassets/pyramid.scn")
        let node = obj?.rootNode.childNode(withName: "pyramid", recursively: true)!
        node?.localRotate(by: SCNVector4Make(0, 1, 1, 0))
        node?.scale = SCNVector3Make(0.0042, 0.0042, 0.0042)
        node?.position = SCNVector3Make(-1, -0.55, -1)
        return node!
    }
    
    class func getQuarter() -> SCNNode {
        let obj = SCNScene(named: "art.scnassets/quarter.scn")
        let node = obj?.rootNode.childNode(withName: "quarter", recursively: true)!
        node?.localRotate(by: SCNVector4Make(0, 1, 1, 0))
        node?.scale = SCNVector3Make(0.0042, 0.0042, 0.0042)
        node?.position = SCNVector3Make(-1, -2.1, -1)
        return node!
    }
    
    class func startRotation(node: SCNNode) {
        let rotate = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(0.01 * Double.pi), z: 0, duration: 0.1))
        node.runAction(rotate)
    }
    
    class func getRampForName(rampName: String) -> SCNNode {
        switch rampName {
        case "pipe":
            return Ramp.getPipe()
        case "pyramid":
            return Ramp.getPyramid()
        case "quarter":
            return Ramp.getQuarter()
        default:
            return Ramp.getPipe()
        }
    }
}
