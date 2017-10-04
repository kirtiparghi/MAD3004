//: Playground - noun: a place where people can play

import UIKit

protocol ICalculte {
    var a:Int {
        get set    }
    var b:Int {
        get
    }
    
    static var MAX : Int = 100
    func calculate() -> Int
}

class Addition : ICalculte {
    
    var num1:Int!
    var num2:Int = 100
    
    init () {
        num1 = 0
        num2 = 0
    }
    
    init (n1: Int, n2: Int) {
        self.num1 = n1
        self.num2  = n2
    }
    
    func calculate() -> Int {
        return self.num1 + self.num2
    }
}

class Subtraction : ICalculte {
    
    var num1:Int!
    var num2:Int!
    
    init () {
        num1 = 0
        num2 = 0
    }
    
    init (n1: Int, n2: Int) {
        self.num1 = n1
        self.num2  = n2
    }
    
    func calculate() -> Int {
        return self.num1 - self.num2
    }
}

class Multiplication : ICalculte {
    
    var num1:Int!
    var num2:Int!
    
    init () {
        num1 = 0
        num2 = 0
    }
    
    init (n1: Int, n2: Int) {
        self.num1 = n1
        self.num2  = n2
    }
    
    func calculate() -> Int {
        return self.num1 * self.num2
    }
}

class Division : ICalculte {
    
    var num1:Int!
    var num2:Int!
    
    init () {
        num1 = 0
        num2 = 0
    }
    
    init (n1: Int, n2: Int) {
        self.num1 = n1
        self.num2  = n2
    }
    
    func calculate() -> Int {
        return self.num1 / self.num2
    }
}

//Addition object
var objAddition:Addition = Addition.init(n1: 12, n2: 12)
objAddition.calculate()

//subtraction object
var objSub:Subtraction = Subtraction.init(n1: 22, n2: 12)
objSub.calculate()

//multiplication object
var objMul:Multiplication = Multiplication.init(n1: 22, n2: 12)
objMul.calculate()

//division object
var objDiv:Division = Division.init(n1: 25, n2: 5)
objDiv.calculate()




