//
//  BaseTest.swift
//  Lesson3_BuildingBlocks
//
//  Created by Gary Behan on 01/11/2024.
//

import XCTest

class BaseTest : XCTestCase {
    var app: XCUIApplication!
    var homeScreen: HomeScreen!
    var homeScreen2: HomeScreen2!
    var alertScreen: AlertScreen!
    var textFieldScreen: TextFieldScreen!
    
    override func setUpWithError() throws {
        app = XCUIApplication()
        app.launch()
        homeScreen = HomeScreen(app: app)
        homeScreen2 = HomeScreen2(app: app)
        alertScreen = AlertScreen(app: app)
        textFieldScreen = TextFieldScreen(app: app)
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        app.terminate()
    }
}
