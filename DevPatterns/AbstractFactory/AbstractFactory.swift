//
//  AbstractFactory.swift
//  DevPatterns
//
//  Created by Serjant Alexandru on 04.02.2023.
//

import Foundation

protocol FurnitureFactory {
    func createChair() -> ChairProtocol
    func createSofa() -> SofaProtocol
//    func createTable()
}

class ModernFactory: FurnitureFactory {
    func createChair() -> ChairProtocol {
        return ModernChair()
    }
    
    func createSofa() -> SofaProtocol {
        return ModernSofa()
    }
    
 
}

class VintajFactory: FurnitureFactory {
    func createChair() -> ChairProtocol {
        return VintajChair()
    }
    
    func createSofa() -> SofaProtocol {
        return VintajSofa()
    }
    
 
}

protocol ChairProtocol {
    func name() -> String
    func together(collaborator: SofaProtocol) -> String
}

class ModernChair: ChairProtocol {
    func together(collaborator: SofaProtocol) -> String {
        name() + "together with " + collaborator.name()
    }
    
    func name() -> String {
        return "ModernChair"
    }
    
    
}

class VintajChair: ChairProtocol {
    func name() -> String {
        "Vintaj Chair"
    }
    
    func together(collaborator: SofaProtocol) -> String {
        name() + "together with " + collaborator.name()
    }
}


protocol SofaProtocol {
    func name() -> String
    
    func together(collaborator: ChairProtocol) -> String
}

class ModernSofa: SofaProtocol {
    func name() -> String {
        return "Modern Sofa"
    }
    
    func together(collaborator: ChairProtocol) -> String {
        name() + "together with " + collaborator.name()
    }
}

class VintajSofa:SofaProtocol {
    func name() -> String {
        "Vintaj Sofa"
    }
    
    func together(collaborator: ChairProtocol) -> String {
        name() + "together with " + collaborator.name()
    }
}
