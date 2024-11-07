//
//  TextFieldTests.swift
//  Lesson2_BasicTestUITests
//
//  Created by Gary Behan on 30/10/2024.
//

import XCTest

class TextFieldTests : BaseTest {
    var textToEnter = "Some text"
    
    func testTextField() throws {
        homeScreen2.textFieldButton.tap()
        
        textFieldScreen.enterText(textToEnter: textToEnter)
    }
}
