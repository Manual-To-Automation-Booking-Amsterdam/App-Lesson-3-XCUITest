//
//  TextFieldScreen.swift
//  Lesson3-BuildingBlocks
//
//  Created by Gary Behan on 01/11/2024.
//

import Foundation
import XCTest

class TextFieldScreen : BaseScreen {
    
    private enum Identifiers {
        static let goBackButtonID = "text-page-go-back-acc-id"
        static let textFieldID = "TextField"
        static let submittedTextLabelID = "SubmittedTextLabel"
    }
    
    var goBackButton: XCUIElement { return app.buttons[Identifiers.goBackButtonID] }
    var textFieldTextBox: XCUIElement { return app.textFields[Identifiers.textFieldID] }
    var submittedTextLabel: XCUIElement { return app.staticTexts[Identifiers.submittedTextLabelID] }
    
    func enterText(textToEnter: String) {
        textFieldTextBox.tap()
        textFieldTextBox.typeText(textToEnter)
        
        XCTAssert(submittedTextLabel.label.contains(textToEnter))
    }
}
