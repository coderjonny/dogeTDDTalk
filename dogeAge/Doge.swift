//
//  Doge.swift
//  dogeAge
//
//  Created by jonny on 9/29/14.
//  Copyright (c) 2014 jonny kang. All rights reserved.
//

import Foundation

public class Doge {
    
    public var fetched: Bool
    
    public init() {
        println("Doge created!!")
        fetched = false
    }
    
    public func fetch() {
        fetched = true
    }
    
    public func dogeAge(humanAge: Int) -> String {
        
        return "Your \(humanAge * 7) year old 🐶 is awesome"
    }
    
    public func bark() -> String {
        return "woof"
    }

}

