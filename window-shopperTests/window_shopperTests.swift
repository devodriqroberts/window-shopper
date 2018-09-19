//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Devodriq Roberts on 9/18/18.
//  Copyright © 2018 Devodriq Roberts. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
   
    
    func testGetHWorkingHoursNeededForPurchase() {
        XCTAssert(Wage.getHours(forWage: 20.00, andPrice: 100.00) == 5)
        XCTAssert(Wage.getHours(forWage: 16.40, andPrice: 173.46) == 11)
    }
    
}

















