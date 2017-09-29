//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str)

class S {
    var x = 100;
}

var s1 = S()
print(s1.x)

var s2 = s1
s1.x = 200

if s2 === s1 {
    print("both pointing to same location")
}

print(s1.x)
print(s2.x)

struct myStruct {
    var x = 100
}

var structS1 = myStruct()
print("s1 (x) \(s1.x)")

var sturct2 = structS1
print("S2 (x) \(sturct2.x)")

structS1.x = 200

print("struct1 (x) \(structS1.x)")
print("struct2 (x) \(sturct2.x)")

class f {
    var c0 = myStruct()
    var y = 1000
}

class Student {
    var sid:Int = 0;
    var snm:String = "";
    var total:Double{
        set {
            self.total = newValue
            self.per = newValue / 5 * 100
        }
        get {
            return self.total
        }
    }
    var per:Double = 0.0 {
        willSet(newPercentage) {
            print("Result About to set based on new \(newPercentage) calculation")
        }
        didSet {
            if per >= 80.0 {
                result = "First"
            }
            else if per >= 70.0 {
                result = "Second"
            }
            else if per >= 60.0 {
                result = "Third"
            }
            else if per >= 50.0 {
                result = "Pass"
            }
            else {
                result = "Fail"
            }
        }
    }
    var result:String?
    var getResult : String {
        set {
            if per >= 80.0 {
                result = "First"
            }
            else if per >= 70.0 {
                result = "Second"
            }
            else if per >= 60.0 {
                result = "Third"
            }
            else if per >= 50.0 {
                result = "Pass"
            }
            else {
                result = "Fail"
            }
        }
        get{
            if result != nil {
                return result!
            }
            return "Unknown"
        }
    }
    
    func setStudentDetails(sid: Int, snm: String, total:Double) {
        self.sid = sid
        self.snm = snm
        self.total = total
    }
    
    func displayDetails() {
        print("Student ID : \(sid)")
        print("Student Name : \(snm)")
        print("Student Total Marks : \(total)")
        print("Student Percentage : \(per)")
        print("Student final Result : \(result)")
    }
}

var student1 = Student()
student1.setStudentDetails(sid: 1, snm: "Kirti", total: 400)
print(student1.displayDetails())


class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps

class Student1 {
    let x = 100
    var id :Int = 0
    var name :String = ""
    var total :Double {
        set {
            print("set of total")
            per = newValue / 5 * 100
        }
        
        get {
            print("get of total")
            
            return self.total
        }
    }
    var per:Double {
        set {
            print("set of per")
            if newValue >= 80.0{
                result = "First"
            } else if newValue >= 70.0{
                result = "Second"
            } else if newValue >= 60.0{
                result = "Third"
            } else if newValue >= 50.0{
                result = "Pass"
            } else {
                result = "Fail"
            }
        }
        
        get {
            print("get of per")
            return self.per
        }
    }
    var result:String = ""
    
    
    func setDat(id :Int, name :String, marks :Double) {
        self.id = id
        self.name = name
        total = marks
    }
    
    func displayData() {
        print("Student ID : \(id)")
        print("Student Name : \(name)")
        
        //print("Student Total Marks : \(total)")
        //print("Student Percentege : \(per)")
        print("Student Result : \(result)")
    }
}

var s1 = Student1()

s1.setDat(id: 1, name: "Denis", marks: 71)
print("\n")
s1.displayData()
