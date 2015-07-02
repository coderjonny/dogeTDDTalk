//
//  Doge.swift
//  dogeAge
//
//  Created by jonny on 9/29/14.
//  Copyright (c) 2014 jonny kang. All rights reserved.
//

import Foundation

class Doge {
    
    var fetched: Bool
    
     init() {
        print("Doge created!!")
        fetched = false
    }
    
     func fetch() {
        fetched = true
    }
    
     func dogeAge(humanAge: Int) -> String {
        
        return "Your \(humanAge * 7) year old 🐶 is awesome"
    }
    
     func bark() -> String {
        return "woof"
    }
    
    func mapBones(locations: [String]) -> [String] {
        let places = locations.map({
            (location: String) -> String in
            let place = location + "woof"

            return place
        })
        
        print(places)
        return places
    }

}

