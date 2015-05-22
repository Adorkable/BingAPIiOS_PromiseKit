//
//  Bing_PromiseKitTests.swift
//  Bing_PromiseKitTests
//
//  Created by Ian on 4/30/15.
//  Copyright (c) 2015 Adorkable. All rights reserved.
//

import UIKit
import XCTest

import BingAPI
import PromiseKit
import BingAPI_PromiseKit

class BingAPI_PromiseKitTests: XCTestCase {
    
    func testSearch() {
        // To get test to run please replace Account Key
        var bing : Bing = Bing(accountKey: <#Account Key#>)
        
        var expect = self.expectationWithDescription("Search")
        var timeoutInterval = NSTimeInterval(30)
        
        firstly {
            
            bing.promiseSearch("xbox", timeoutInterval: timeoutInterval)
            
        }.then { (results : Array<BingSearchResult>?) -> Promise< Array<BingSearchResult>? > in
            
            XCTAssertTrue(results != nil, "Returned Results Array")
            XCTAssertGreaterThan(results!.count, 0, "Returned More than Zero Results")
            
            expect.fulfill()
            
            return Promise< Array<BingSearchResult>? >(results)
        }.catch(policy: CatchPolicy.AllErrors) { (error : NSError) -> Void in
            
            XCTAssertTrue(false, "No Errors")
            expect.fulfill()
        }
        
        self.waitForExpectationsWithTimeout(timeoutInterval, handler: nil)
    }
}
