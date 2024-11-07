//
//  HelperClass.swift
//  Lesson3_BuildingBlocks
//
//  Created by Gary Behan on 01/11/2024.
//

import Foundation
import XCTest


extension XCUIElement {
    @discardableResult
    func waitForElementToBecomeHittable(timeout: TimeInterval) -> Bool {
        let predicate = NSPredicate(format: "exists == true && isHittable == true")
        let expectation = XCTNSPredicateExpectation(predicate: predicate, object: self)
        let result = XCTWaiter().wait(for: [ expectation ], timeout: timeout)
        
        return result == .completed
    }
    
    @discardableResult
    func waitForElementToBecomeUnhittable(timeout: TimeInterval) -> Bool {
        let predicate = NSPredicate(format: "exists == true && isHittable == false")
        let expectation = XCTNSPredicateExpectation(predicate: predicate, object: self)
        let result = XCTWaiter().wait(for: [ expectation ], timeout: TimeInterval(timeout.sign.rawValue))
        
        return result == .completed
    }
    
    @discardableResult
    func waitForElementsValueToMatch(predicate: String, timeout: TimeInterval) -> Bool {
        let predicate   = NSPredicate(format: "value BEGINSWITH '\(predicate)'", argumentArray: nil)
        let expectation = XCTNSPredicateExpectation(predicate: predicate, object: self)

        let result = XCTWaiter().wait(for: [ expectation ], timeout: timeout)

        return result == .completed
    }
}
