//
//  Block.swift
//  Word Checker
//
//  Created by Amir Nazari on 8/25/16.
//  Copyright © 2016 Amir Nazari. All rights reserved.
//

import Foundation

class Totem : NSObject {
    
    let sides : [String]
    let beenUsed = false
    
    init(sides: [String]) {
        self.sides = sides
    }
    
    override func isEqual(object: AnyObject?) -> Bool {
        
        if let totem = object as? Totem {
            
            if totem.sides == self.sides {
                return true
            }
        }
        
        return false
    }
    
}