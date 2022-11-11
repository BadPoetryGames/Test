//
//  CanMockPhysicsInteractions.swift
//  Test Package
//
//  Created by James Lingo on 8/24/22.
//

import Foundation
import SpriteKit

// TODO: !!

public protocol CanSetupPhysicsInteractions: AnyObject {
    
    var mockContact: SKPhysicsContact { get }

    var mockBodyA: SKPhysicsBody { get }

    var mockBodyB: SKPhysicsBody { get }

    var mockScene: SKScene { get set }
}

public extension CanSetupPhysicsInteractions {
    
    func setUp(body: SKPhysicsBody, with node: SKSpriteNode, and category: UInt32) {
        body.perform(Selector((Object.setMethod)), with: node)
        body.categoryBitMask = category
     
        let str = body == mockBodyA ? Object.setBody("A") : Object.setBody("B")
        mockContact.perform(Selector((str)), with: body)
    }
}
