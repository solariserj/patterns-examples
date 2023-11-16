//
//  ClientForProtoype.swift
//  DevPatterns
//
//  Created by Serjant Alexandru on 08.02.2023.
//

import Foundation

class PrototypeClient {
    func start() {
        let original =  SubClass(value: 3, text: "Is Three")
        let dublicate = original
        original.boolValue = false
        guard let copy = original.copy() as? SubClass else {
            print("Error copy")
            return
        }
        original.boolValue = true
        original.increase()
        dublicate.increase()
        copy.discreese()
        
        print("original - \(original.output) - \(original.boolValue)")
        print("dublicate - \(dublicate.output) - \(dublicate.boolValue)")
        
        print("copya - \(copy.output) - \(copy.boolValue)")

    }
    
}
