//
//  HasTestSubject.swift
//  Test Package
//
//  Created by James Lingo on 11/10/22.
//

public protocol HasTestSubject: AnyObject {
    
    associatedtype TestSubject
    
    var subject: TestSubject? { get set }

}
