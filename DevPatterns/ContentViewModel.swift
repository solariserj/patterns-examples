//
//  ContentViewModel.swift
//  DevPatterns
//
//  Created by Serjant Alexandru on 04.02.2023.
//

import Foundation
import UIKit

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
        case .factory:
            goFactory()
        case .singleton:
            goSingleton()
        case .strategy:
            goStrategy()     
        case .observer:
            goObserver()
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
    
    func goFactory() {
        print("Factory")
        print("App Lauch with Creator 1")
        FactoryClient.generateFor(creator: ConcreteCreator1())
        
        print("App Lauch with Creator 2")
        FactoryClient.generateFor(creator: ConcreteCreator2())

    }
    
    func goSingleton() {
        print("Singleton")
        var obj  = SingletonPattern.shared
        obj.value = 1000
        var secondObject = SingletonPattern.shared
        secondObject.value = 2000
        
        obj.doSomething()
        secondObject.doSomething()
        
        print("link equal \(obj === secondObject)")
    
//        var third = SingletonPattern()
//        third.value = 9999
//        third.doSomething()
//        print(" link eual \(obj === third) ")
    }
    
    
    func goStrategy() {
        print("Strategy")
        
        let filter = Filter()
        
        let image = UIImage()
        
        filter.filterStrategy = SepiaFilter()
        filter.applyFilter(to: image)

        filter.filterStrategy = ChromeFilter()
        filter.applyFilter(to: image)

        filter.filterStrategy = BlackAndWhiteFilter()
        filter.applyFilter(to: image)

        
    }
    
    func goObserver() {
        let vasea = User(name: "Vasea")
        let petya = User(name: "Petya")
        let robot = Google()

        var bloger = Bloger()
        bloger.add(observer: vasea)
        bloger.video = "ViJU Nature"
        
        sleep(5)
        
        bloger.add(observer: robot)
        bloger.video = "Discovery Chanal"
        
        sleep(5)
        
        bloger.remove(observer: robot)
        bloger.add(observer: petya)
        bloger.video = "TV 1000"
        
        
    }
}
