//
//  LeapTests.swift
//  LeapTests
//
//  Created by 한상진 on 2020/10/12.
//

import XCTest
@testable import Leap

class LeapTests: XCTestCase {
    var testYear: Year!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testVanillaLeapYear() {
        // 1. given
        let year = 1996
        
        // 2. when
        testYear = Year(calendarYear:year)
        
        // 3. then
        XCTAssertTrue(testYear.isLeapYear)
    }
    
    func testAnyOldYear() {
        // 1. given
        let year = 1997
        
        // 2. when
        testYear = Year(calendarYear:year)
        
        // 3. then
        XCTAssertTrue(!testYear.isLeapYear)
    }
    
    func testCentury() {
        // 1. given
        let year = 1900
        
        // 2. when
        testYear = Year(calendarYear:year)
        
        // 3. then
        XCTAssertTrue(!testYear.isLeapYear)
    }
    
    func testExceptionalCentury() {
        // 1. given
        let year = 2400
        
        // 2. when
        testYear = Year(calendarYear:year)
        
        // 3. then
        XCTAssertTrue(testYear.isLeapYear)
    }
    
    func testWrongCase() {
        // 1. given
        let year = 2400
        
        // 2. when
        testYear = Year(calendarYear:year)
        
        // 3. then
        XCTAssertTrue(!testYear.isLeapYear)
    }
}
