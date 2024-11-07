//
//  HomeScreen.swift
//  Lesson3-BuildingBlocks
//
//  Created by Gary Behan on 01/11/2024.
//

import Foundation
import XCTest

class HomeScreen2 {
    let app: XCUIApplication
    
    private enum Identifiers {
        static let alertButtonID = "alert-btn-acc-id"
        static let textFieldButtonID = "txt-field-btn-acc-id"
        static let formButtonID = "form-btn-acc-id"
        static let dateButtonID = "date-btn-acc-id"
        static let switchesButtonID = "switches-btn-acc-id"
        static let loginButtonID = "login-btn-acc-id"
    }
    
    var alertButton: XCUIElement { return app.buttons[Identifiers.alertButtonID] }
    var textFieldButton: XCUIElement { return app.buttons[Identifiers.textFieldButtonID] }
    var formButton: XCUIElement { return app.buttons[Identifiers.formButtonID] }
    var datePickerButton: XCUIElement { return app.buttons[Identifiers.dateButtonID] }
    var switchesButton: XCUIElement { return app.buttons[Identifiers.switchesButtonID] }
    var loginButton: XCUIElement { return app.buttons[Identifiers.loginButtonID] }

    init(app: XCUIApplication) {
        self.app = app
    }
    
    func goToAlertPage() { alertButton.tap() }
    
    func goToTextFieldPage() { textFieldButton.tap() }
    
    func goToFormPage() { formButton.tap() }
    
    func goToDatePickerPage() { datePickerButton.tap() }
    
    func goToSwitchesPage() { switchesButton.tap() }
    
    func goToLoginPage() { loginButton.tap() }
    
    func alertButtonPresent() { XCTAssert(alertButton.isHittable) }
    
    func textFieldButtonPresent() { XCTAssert(textFieldButton.isHittable) }
    
    func formButtonPresent() { XCTAssert(formButton.isHittable) }
    
    func datePickerButtonPresent() { XCTAssert(datePickerButton.isHittable) }
    
    func switchesButtonPresent() { XCTAssert(switchesButton.isHittable) }
    
    func loginButtonPresent() { XCTAssert(loginButton.isHittable) }
}
