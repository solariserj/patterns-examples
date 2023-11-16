//
//  Prototype.swift
//  DevPatterns
//
//  Created by Serjant Alexandru on 08.02.2023.
//

import Foundation


class BaseClass: NSCopying {
  
    private var value: Int
    private var text: String
    
    var output: String {
        text + "  - \(value)"
    }
    
    func increase() {
        value = value + 1
    }
    
    func discreese() {
        value = value - 1
    }
    
    required init(value: Int = 0, text: String = "Default") {
        self.value = value
        self.text = text
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let prototype = type(of: self).init()
        prototype.value = self.value
        prototype.text = self.text
        print("Values defined was copied")
        return prototype
    }
    
    
}


class SubClass: BaseClass {
    var boolValue = true
    
    override func copy(with zone: NSZone? = nil) -> Any {
        guard let prototype = super.copy(with: zone) as? SubClass else {
            return SubClass()
        }
        prototype.boolValue = boolValue
        
        print("Values defined in subclass have been cloned")
        
        return prototype
    }
    
    func copy() -> Any {
        copy(with: nil)
    }
}


 
