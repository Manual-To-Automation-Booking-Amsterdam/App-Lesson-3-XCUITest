//
//  AlertScreen.swift
//  Lesson3-BuildingBlocks
//
//  Created by Gary Behan on 01/11/2024.
//

import Foundation
import XCTest

class AlertScreen : BaseScreen {
    
    private enum Identifiers {
        static let goBackButtonID = "alert-page-go-back-btn-acc-id"
        static let alertScreenTextID = "alert-page-text-acc-id"
        static let alertScreenTextContents = "You are on the Alert Page!"
        static let alertDialogHeader = "Alert"
        static let alertDialogText = "This is a native alert"
    }
    
    var goBackButton: XCUIElement { return app.buttons[Identifiers.goBackButtonID] }
    var alertScreenText: XCUIElement { return app.staticTexts[Identifiers.alertScreenTextID] }
    
    func handleAlertDialog(decision: String) {
        // Assert that the popup dialog appears
        XCTAssertEqual(app.alerts.element.label, Identifiers.alertDialogHeader)
        XCTAssert(app.alerts.element.staticTexts[Identifiers.alertDialogText].exists)
        
        // Tap the "Yes" button in the dialog
        app.alerts.scrollViews.otherElements.buttons[decision].tap()
    
    }
}
