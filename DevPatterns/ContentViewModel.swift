//
//  ContentViewModel.swift
//  DevPatterns
//
//  Created by Serjant Alexandru on 04.02.2023.
//

import Foundation

class ContentViewModel: ObservableObject {
   
    @Published var list = [PatternType]()
    
    init() {
        list = PatternType.all
    }
    
    func select(patern: PatternType) {
        print("Go To \(patern.title)")
        switch patern {
        case .abstractFactory:
            goAbstractFactory()
        case .builder:
            goBuilder()
        case .prototype:
            goPrototype()
        }
    }
    
    func goAbstractFactory() {
        getFrom(Bool.random() ? ModernFactory() : VintajFactory())
    }
    
    func goBuilder() {
        print("Builder")
        
        BuilderClient.startCode(director: Director())
        
    }
    
    func getFrom(_ factory: FurnitureFactory) {
        
        let chair = factory.createChair()
        let sofa = factory.createSofa()
        
        print(chair.name())
        print(chair.together(collaborator: sofa))
        print(sofa.name())
        print(sofa.together(collaborator: chair))

    }
    
    func goPrototype() {
        print("Prototype")
        let client = PrototypeClient()
        client.start()
        
        
        
    }
}
