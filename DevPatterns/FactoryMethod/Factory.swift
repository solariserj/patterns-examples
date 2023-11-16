//
//  Factory.swift
//  DevPatterns
//
//  Created by Serjant Alexandru on 12.02.2023.
//

import Foundation

protocol Creator {
    
    func factoryMethod() -> Product
    func someOperation() -> String
    
    
}

extension Creator {
    
    func someOperation() -> String  {
        
        let product = factoryMethod()
        
        return "Creator with same code + " + product.operation()
        
    }
}

class ConcreteCreator1: Creator {
    func factoryMethod() -> Product {
        ConcretProduct1()
    }

}

class ConcreteCreator2: Creator {
    func factoryMethod() -> Product {
         ConcreteProduct2()
    }
    
}

protocol Product  {
    
    func operation() -> String
    
}

class ConcretProduct1: Product {
    
    func operation() -> String {
        "Conctrete product 1 <<"
    }
    
}

class ConcreteProduct2: Product {
    
    func operation() -> String {
        "Conctrete product >> 2 <<"
    }
    
}


class FactoryClient {
    
    static func generateFor(creator: Creator) {
        
        print("Client: I'm not aware of the creator's class, but it still works.\n" + creator.someOperation())
    }
    
}
