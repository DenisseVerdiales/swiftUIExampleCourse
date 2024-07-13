//
//  ShuziUITests.swift
//  ShuziUITests
//
//  Created by Cynthia Denisse Verdiales Moreno on 20/05/24.
//

import XCTest
@testable import Shuzi

final class ShuziUITests: XCTestCase {
    
    /*
     max(x: 3, y: 10, z: 7) = 10
     max(x: 3, y: 7, z: 10) = 10
     max(x: 7, y: 10, z: 3) = 10
     max(x: 7, y: 3, z: 10) = 10
     max(x: 10, y: 3, z: 7) = 10
     max(x: 10, y: 7, z: 3) = 10
     max(x: 5, y: 5, z: 5) = 5
     max(x:-15, y: 15, z: 0) = 15
    */

 
    func testMax() throws {
        // UI tests must launch the application that they test.
      /*  let app = XCUIApplication()
        app.launch()
*/
        let dataArray = [
            (x: 3, y: 10, z: 7),
            (x: 3, y: 7, z: 10),
            (x: 7, y: 10, z: 3),
            (x: 7, y: 3, z: 10),
            (x: 10, y: 3, z: 7),
            (x: 10, y: 7, z: 3),
            (x: 5, y: 5, z: 5),
            (x:-15, y: 15, z: 0)
        ]
        
        let expectedValues = [10, 10, 10, 10, 10, 10, 5, 15]
        
        for i in 0..<dataArray.count {
            let data = dataArray[i]
            let expectedValue = expectedValues[i]
            let evaluatedValue = myMax(x: data.x, y: data.y, z: data.z)
            
            XCTAssertEqual(expectedValue, evaluatedValue)
        }
        
    }

    /*func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }*/
}
