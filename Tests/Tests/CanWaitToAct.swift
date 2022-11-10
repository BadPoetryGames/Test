//
//  CanWaitToAct.swift
//  Test Package
//
//  Created by James Lingo on 2/18/22.
//

import XCTest
@testable import Test

// TODO: !!
public protocol CanWaitToAct { }

public extension CanWaitToAct where Self: XCTestCase {
    
    // TODO: !!
    func waitToAct(duration: Double = 1.0) {
        let expectation = XCTestExpectation()
        let q = DispatchQueue(label: Queues.test)
        q.asyncAfter(deadline: .now() + duration) { expectation.fulfill() }
        wait(for: [expectation], timeout: duration + 1.0)
    }
}

extension XCTestCase: CanWaitToAct { }
