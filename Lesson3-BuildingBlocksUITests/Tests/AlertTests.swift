//
//  AlertTests.swift
//  Lesson2_BasicTestUITests
//
//  Created by Gary Behan on 30/10/2024.
//

import XCTest

class AlertTests : BaseTest {
    func testAlertYes() throws {
        homeScreen2.alertButton.tap()
        
        alertScreen.handleAlertDialog(decision: "Yes")
        
        XCTAssert(alertScreen.goBackButton.isHittable)
    }
        
    func testAlertNo() throws {
        // Define the Alert button as we will be interacting with it multiple times.
        homeScreen2.alertButton.tap()
        
        alertScreen.handleAlertDialog(decision: "No")
        
        // Assert that the Alert button is visible
        XCTAssert(homeScreen2.alertButton.isHittable)
        
    }
}
