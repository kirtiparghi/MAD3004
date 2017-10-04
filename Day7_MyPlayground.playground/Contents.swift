//: Playground - noun: a place where people can play

import UIKit

protocol IDisplay {
    init()
    func display()
}

protocol IGreetings {
    func greet() -> String
}

class Fruits : IDisplay,IGreetings {
    
    var name : String = String()
    
    required init() {
        
    }
    
    init(name:String) {
        
    }
    
    func display() {
        print("Protocol display()")
    }
    
    func greet() -> String {
        return "Welcome to Protocol Programming"
    }
    
    func greet(_ name:String) {
        print("I will fire the error \(name)")
    }
}

var f1 = Fruits()
f1.display()
f1.greet("Kirti")

var f2: IDisplay = Fruits()
f2 = f1 as Fruits
f2.display()

class Apple : Fruits {
    required init() {
        super.init(name: "Golden Apple")
    }
    
    override init(name:String) {
        super.init()
        self.name = name
    }
}

print("------------------- Apple starts from here -------------------------------")
var apple1 = Apple()
apple1.display()


