//
//  Observer.swift
//  DevPatterns
//
//  Created by Serjant Alexandru on 28.11.2023.
//

import Foundation

protocol Observer {
    func getNow(video: String)
}

protocol Subject {
    func add(observer: Observer)
    func remove(observer: Observer)
    func sendNotification(message: String)
}

struct Bloger: Subject {
    
    private var queue = NSMutableSet()
    
    var video: String = ""{
        didSet {
            sendNotification(message: video)
        }
    }
    
    func add(observer: Observer) {
        queue.add(observer)
    }
    
    func remove(observer: Observer) {
        queue.remove(observer)
    }
    
    func sendNotification(message: String) {
        for observer in queue {
            (observer as! Observer).getNow(video: message)
        }
    }
}

struct Google: Observer {
    func getNow(video: String) {
        print("Google robot parse " + video)
    }
}

struct User: Observer {
    
    var name: String
    
    func getNow(video: String) {
        print("Vasea smotrit " + video)
    }
    
    init(name: String) {
        self.name = name
    }
    
}





