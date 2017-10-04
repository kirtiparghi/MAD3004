//: Playground - noun: a place where people can play

import UIKit

class Employee {
    var name:String!
    var age:Int!
    var calcBirthYear: Int {
        get {
            return 2017 - age
        }
    }
    
    var calcEarnings:Int {
        get {
            return 1000
        }
    }
}

class Vehicle {
    var make:String!
    var plate:String!
}

class Car {
    
}

class Motorcycle {
    
}

class Parttime {
    
}

class Intern {
    
}

class FullTime {
    
}

class Commis
