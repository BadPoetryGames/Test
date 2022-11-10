//
//  HasIsCloudAvailable.swift
//  Cloud Package
//
//  Created by James Lingo on 11/10/22.
//

import Foundation

public protocol HasIsCloudAvailable { }

public extension HasIsCloudAvailable {
    
    static var isCloudAvailable: Bool { FileManager.default.ubiquityIdentityToken != nil }
    
    var isCloudAvailable: Bool { FileManager.default.ubiquityIdentityToken != nil }
}
