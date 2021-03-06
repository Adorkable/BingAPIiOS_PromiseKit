//
//  Bing+PromiseKit.swift
//  BingAPI
//
//  Created by Ian on 4/29/15.
//  Copyright (c) 2015 Adorkable. All rights reserved.
//

import Foundation

import BingAPI

import PromiseKit

public extension Bing {
    
    public func promiseSearch(query : String, timeoutInterval : NSTimeInterval) -> Promise< Array< BingSearchResult>? > {
        
        return Promise< Array< BingSearchResult>? > { fulfill, reject in
            self.search(query, timeoutInterval: timeoutInterval, resultsHandler: { (results, error) -> Void in
                
                if error != nil
                {
                    reject(error!)
                } else
                {
                    fulfill(results)
                }
                
            })
        }
    }
}