//
//  Builder.swift
//  DevPatterns
//
//  Created by Serjant Alexandru on 07.02.2023.
//

import Foundation

protocol Builder {
    
    func producePartA()
    func producePartB()
    func producePartZ()
        
}

class ConcreteBuilder: Builder {

    private var product = Product1()

    func reset() {
            product = Product1()
    }
    
    func producePartA() {
        product.add(part: "partA")
    }
    
    func producePartB() {
        product.add(part: "partB")
 
    }
    
    func producePartZ() {
        product.add(part: "partZ")
 
    }
    
    func retriveProduct() -> Product1 {
        let result = self.product
        reset()
        return result
    }

}

class Director {
    
    private var builder: Builder?
    
    func update(builder: Builder) {
        self.builder = builder
    }
    
    func minimalProduct() {
        builder?.producePartA()
    }
    
    func fullProduct() {
        builder?.producePartA()
        builder?.producePartB()
        builder?.producePartZ()
    }
    
    func customProduct() {
        builder?.producePartZ()
    }
    
}

class Product1 {
    
    var parts = [String]()
    
    func add(part: String) {
        parts.append(part)
    }

    func list() -> String {
        "All list: \(parts.joined(separator: ", "))"
    }
}


class BuilderClient {
    
    static func startCode(director: Director) {
        let builder = ConcreteBuilder()
        director.update(builder: builder)
        
        director.minimalProduct()
        print(builder.retriveProduct().list())

        director.customProduct()
        print(builder.retriveProduct().list())

        director.fullProduct()
        print(builder.retriveProduct().list())

        print("Wihout Director")
        builder.producePartB()
        print(builder.retriveProduct().list())

    }
}
