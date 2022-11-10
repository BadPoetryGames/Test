//
//  Strings.swift
//  Test Package
//
//  Created by James Lingo on 11/10/22.
//

import Foundation

struct Key {
    static let testEnvironment = "XCTestConfigurationFilePath"
}

struct Object {
    static let setMethod = "setRepresentedObject:"
    static func setBody(_ mod: String) -> String { "setBody\(mod):" }
}
