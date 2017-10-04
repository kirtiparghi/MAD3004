import Foundation

class Employee {
    
    var name:String!
    var age:String!
    
    var calcBirthYear:Int {
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
