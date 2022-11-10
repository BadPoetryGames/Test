//
//  HasIsRunningTests.swift
//  Test Package
//
//  Created by James Lingo on 11/10/22.
//

import Foundation

protocol HasIsRunningTests { }

extension HasIsRunningTests {
    
    static var isRunnignTests: Bool {
        ProcessInfo.processInfo.environment[Key.testEnvironment] != nil
    }
    
    var isRunnignTests: Bool {
        ProcessInfo.processInfo.environment[Key.testEnvironment] != nil
    }
}
