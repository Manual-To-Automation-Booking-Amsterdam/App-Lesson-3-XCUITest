//
//  HomeScreen.swift
//  Lesson3-BuildingBlocks
//
//  Created by Gary Behan on 01/11/2024.
//

import Foundation
import XCTest

class HomeScreen : BaseScreen {
    private lazy var alertButton = app.buttons["alert-btn-acc-id"]
    private lazy var textFieldButton = app.buttons["txt-field-btn-acc-id"]
    private lazy var formButton = app.buttons["form-btn-acc-id"]
    private lazy var datePickerButton = app.buttons["date-btn-acc-id"]
    private lazy var switchesButton = app.buttons["switches-btn-acc-id"]
    private lazy var loginButton = app.buttons["login-btn-acc-id"]
    
    func validateScreenLoaded() {
        XCTAssert(alertButton.exists)
        XCTAssert(textFieldButton.exists)
        XCTAssert(formButton.exists)
        XCTAssert(datePickerButton.exists)
        XCTAssert(switchesButton.exists)
        XCTAssert(loginButton.exists)
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
