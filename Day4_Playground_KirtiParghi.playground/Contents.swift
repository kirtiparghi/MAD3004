//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//FUNCTION WITHOUT PARAMAETERS
func add() {
    print("I am in User Defined Function")
}

add()

//FUNCTION WITH PARAMETERS
func greetings(name:String) {
    print("Welcome \(name)")
}
greetings(name: "Kirti")

func sum(a:Int,b:Int) {
    print("sum : \(a+b)")
}
sum(a: 10, b: 20)

var a = 100, b = 200
sum(a: a, b: b)

func sub(a:Int,_ b:Int) {
    print("sub : \(a-b)")
}
sub(a: 10, 20)

//FUNCTION WITH RETURN VALUE
func multi(a: Int, b: Int) -> Int {
    return a*b
}
print(multi(a: 20, b: 20))

//FUNCTION WITH MULTIPLE VALUES
func swipeNumbers(a:inout Double, b: inout Double) {
    let c = a
    a = b
    b = c
}
var x = 100.0, y = 200.0

swipeNumbers(a: &x, b: &y)

print("x : \(x) y : \(y)")

func swipeNumbers1(a: Int, b: Int) -> (Int,Int) {
    return(b,a)
}

(_,a) = swipeNumbers1(a: 10, b: 20)
print(a)

func displayArray(array: [Int]) {
    for value in array {
        print(value)
    }
}
var array = [1,2,3,5,6]
displayArray(array: array)


func simpleInterest(amount:Double, noOfYears: Double,rate:Double = 5.0)-> Double
{
    let si = ((amount * rate) * noOfYears)
        / 100
    
    return si
}
print(simpleInterest(amount: 1000, noOfYears: 5))
print(simpleInterest(amount: 1000, noOfYears: 5, rate:10))

func si(amount:Double,_ noOfYears:Double = 5, rate:Double) -> Double {
    let s = amount * rate * noOfYears / 100
    return s
}

print(si(amount: 1000, 10, rate: 5.0))
print(si(amount: 1000, rate: 5.0))

func displayArray(array: Int...) {
    for value in array {
        print(value)
    }
}
var newArray = [6,4,2,89,5]
print(displayArray(array: 2,3,5,8,94,6))

func display(n:[Int]...) {
    for i in n{
        print(i)
    }
}

var arr = [1,2,3,4,5]
display(n: arr,arr,arr)

// WITH INOUT
func addition(arr1: [Int], arr2: [Int], finalArray: inout [Int]) {
    var n = 0
    for index1 in arr1 {
        finalArray.append(index1 + arr2[n])
        n = n + 1
    }
}

//WITHOUT INOUT
func additionNew(arr1: [Int], arr2: [Int]) -> [Int] {
    var n = 0
    var finalArray = [Int]()
    for index1 in arr1 {
        finalArray.append(index1 + arr2[n])
        n = n + 1
    }
    return finalArray
}

var finalArray: [Int] = [Int]()

addition(arr1: [10,20,30,40,50], arr2: [60,40,50,30,20], finalArray: &finalArray)
print(finalArray)

var newArray1 = [Int]()
newArray1 = additionNew(arr1: [1,2,3,5,6], arr2: [6,8,9,7,5])
print(newArray1)

func additionWithMultiArray(arrays: [Int]...) -> [Int]{
    
    var finalArray = [Int]()
    
    for i in 0..<arrays[0].count {
        finalArray.append(arrays[0][i] + arrays[1][i])
    }
    return finalArray
}
print(additionWithMultiArray(arrays: [1,2,3,5,6],[8,9,5,4,7]))

func addTwoInts(a:Int, b:Int) -> Int {
    return a+b
}

var mathFunction : (Int,Int) -> Int = addTwoInts

mathFunction(20, 20)

var stringArray = "10 20 30 40 50"

let splitArray = stringArray.characters.split{$0 == " "}.map(String.init)

var newArray10 = [Int]()
for value in splitArray {
    newArray10.append(Int.init(value)!)
}
print(splitArray)
print(newArray10)

//CLOSURES
var bool : Bool = false
print(bool)

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print(reversedNames)



