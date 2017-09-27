//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person : "kirti"))

func giveMeMaxAndMinFromList(array : [Int]) -> (min: Int, max: Int) {
    
    var min: Int = array[0]
    var max: Int = array[0]
    for value in array {
        if value < min {
            min = value
        }
        if value > max {
            max = value
        }
        //print(value)
    }
    return (min,max)
}

var ans = giveMeMaxAndMinFromList(array: [99,2,44,6,88,55])


print("Min value is \(ans.min)")
print("Max value is \(ans.max)")

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers


func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// Prints "someInt is now 107, and anotherInt is now 3"

var a = 1, b = 2
//a++

//var c  = 5 + b / --a + a--

//var c  = 5 + (b / (a - 1 )) +  (a-1)

//for a = 1; a <= 10; a+=1 {
//    print(a)
//}

var x = (10,20)
print(x.0)
print(x.1)
var z = (100,x.1)
print(z.0)
print(z.1)

var (a1,a2) = z
print(a1)
print(a2)

var newVar = (5,10,15)
var (i1,_,i2) = newVar
print(i1)
print(i2)

/*
COLLECTION TYPES EXERCISE
 */

var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")

//add values to array
someInts.append(3)
someInts.append(2)

someInts[0] = 100
print(someInts)

//size of array
print("size of array is \(someInts.count)")

// someInts now contains 1 value of type Int
//someInts = []
// someInts is now an empty array, but is still of type [Int]
print(someInts)





var anyArray = [Any]()
anyArray.append(1)
anyArray.append("sdas")
print(anyArray)

var newArray1 = [10,20,30,40,50]
print(newArray1)

var xx = 0...2
for index in xx {
    print(index)
}

someInts.append(121)
someInts.append(3424)
someInts.append(44)
someInts.append(455)
print("asdas \(someInts)")
var xx1 = someInts[1...3]
print(xx1[2])
for index1 in xx1 {
    print(index1)
}

//new constructor of array
var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
// anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]

var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]

//STRING ARRAY

var shoppingList: [String] = ["Eggs", "Milk"]

print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}

shoppingList.append("Flour")

shoppingList += ["Baking Powder"]
// shoppingList now contains 4 items
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
// shoppingList now contains 7 items

var firstItem = shoppingList[0]

shoppingList[0] = "Six eggs"

shoppingList[4...6] = ["Bananas", "Apples"]

//INSERT VALUE AT INDEX
shoppingList.insert("Maple Syrup", at: 0)

//REMOVE VALUE AT INDEX
let mapleSyrup = shoppingList.remove(at: 0)

firstItem = shoppingList[0]

//REMOVE LAST ELEMENT
let apples = shoppingList.removeLast()

for item in shoppingList {
    print(item)
}

//ENUMERATED STRING ARRAY
for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

var unsortedArray = [Int]()
unsortedArray.append(12)
unsortedArray.append(23)
unsortedArray.append(66)
unsortedArray.append(7)
unsortedArray.sort()
print(unsortedArray)

unsortedArray.reverse()
print(unsortedArray)

print(unsortedArray.indices)

//SET COLLECTION TYPE EXERCISE

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
// Prints "letters is of type Set<Character> with 0 items."

letters.insert("a")
// letters now contains 1 value of type Character

print(letters)

var newSet: Set<String> = ["Rock", "Classical", "Hip hop", "Rock"]

print(newSet)

newSet[newSet.index(newSet.startIndex, offsetBy: 2)] // -> will print "d" as it advances by 2

print("I have \(newSet.count) favorite music genres.")

if newSet.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

newSet.insert("Jazz")

if let removedGenre = newSet.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
// Prints "Rock? I'm over it."

if newSet.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
// Prints "It's too funky in here."

for genre in newSet {
    print("\(genre)")
}

for genre in newSet.sorted() {
    print("\(genre)")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]

//Dictionaries
//<KEY,VALUE> pairs
var d1: Dictionary<String,String> = ["India":"Hindi","Canada":"English"]
print(d1)
print(d1.description)
print(d1["India"]!)
print(d1["Canada"]!)

for (k,v) in d1 {
    print("\(k) -> \(v)")
}

d1["China"] = "Mandarin"
print(d1)

var d2 = [String:AnyObject]()
d2["firstname"] = "Kirti" as AnyObject
d2["lastname"] = "Parghi" as AnyObject
d2["myDate"] = Date() as AnyObject
d2["salary"] = nil
d2["age"] = Int.init(26) as AnyObject

for (k,v) in d2 {
    print("\(k) -> \(v)")
}

var k = Array(d2.keys)
for k1 in k {
    print("keys -> \(k1)")
}
var v = Array(d2.values)
for v1 in v {
    print("values -> \(v1)")
}

print(v)

d2.reversed()
print(d2)

//Exercise
var dictStudent1 = [String : AnyObject]()
dictStudent1["id"] = "C001" as AnyObject

var dictName = [String:String]()
dictName["firstname"] = "Kirti"
dictName["lastname"] = "Parghi"

var dictAddr = [String:AnyObject]()
dictAddr["street"] = "asdas" as AnyObject
dictAddr["aprtmentno"] = Int.init(111) as AnyObject
dictAddr["city"] = "Toronto" as AnyObject
dictAddr["zip"] = "M1H1G4" as AnyObject

var dictBirthDate = [String:AnyObject]()
dictBirthDate["dd"] = Int.init(11) as AnyObject
dictBirthDate["mm"] = Int.init(10) as AnyObject
dictBirthDate["yy"] = Int.init(2017) as AnyObject

dictStudent1["sname"] = dictName as AnyObject
dictStudent1["address"] = dictAddr as AnyObject
dictStudent1["birthdate"] = dictBirthDate as AnyObject

var dictStudent2 = [String : AnyObject]()
dictStudent2["id"] = "C002" as AnyObject

var dictName1 = [String:String]()
dictName1["firstname"] = "Steve"
dictName1["lastname"] = "Jobs"

var dictAddr1 = [String:AnyObject]()
dictAddr1["street"] = "asdas" as AnyObject
dictAddr1["aprtmentno"] = Int.init(111) as AnyObject
dictAddr1["city"] = "Toronto" as AnyObject
dictAddr1["zip"] = "M1H1G4" as AnyObject

var dictBirthDate1 = [String:AnyObject]()
dictBirthDate1["dd"] = Int.init(13) as AnyObject
dictBirthDate1["mm"] = Int.init(9) as AnyObject
dictBirthDate1["yy"] = Int.init(2017) as AnyObject

dictStudent2["sname"] = dictName1 as AnyObject
dictStudent2["address"] = dictAddr1 as AnyObject
dictStudent2["birthdate"] = dictBirthDate1 as AnyObject

var dictStudent3 = [String : AnyObject]()
dictStudent3["id"] = "C003" as AnyObject

var dictName2 = [String:String]()
dictName2["firstname"] = "John"
dictName2["lastname"] = "Carter"

var dictAddr2 = [String:AnyObject]()
dictAddr2["street"] = "asdas" as AnyObject
dictAddr2["aprtmentno"] = Int.init(111) as AnyObject
dictAddr2["city"] = "Toronto" as AnyObject
dictAddr2["zip"] = "M1H1G4" as AnyObject

var dictBirthDate2 = [String:AnyObject]()
dictBirthDate2["dd"] = Int.init(13) as AnyObject
dictBirthDate2["mm"] = Int.init(9) as AnyObject
dictBirthDate2["yy"] = Int.init(2017) as AnyObject

dictStudent3["sname"] = dictName2 as AnyObject
dictStudent3["address"] = dictAddr2 as AnyObject
dictStudent3["birthdate"] = dictBirthDate2 as AnyObject

var dictStudent4 = [String : AnyObject]()
dictStudent4["id"] = "C004" as AnyObject

var dictName3 = [String:String]()
dictName3["firstname"] = "Steffy"
dictName3["lastname"] = "Smith"

var dictAddr3 = [String:AnyObject]()
dictAddr3["street"] = "asdas" as AnyObject
dictAddr3["aprtmentno"] = Int.init(111) as AnyObject
dictAddr3["city"] = "Toronto" as AnyObject
dictAddr3["zip"] = "M1H1G4" as AnyObject

var dictBirthDate3 = [String:AnyObject]()
dictBirthDate3["dd"] = Int.init(13) as AnyObject
dictBirthDate3["mm"] = Int.init(9) as AnyObject
dictBirthDate3["yy"] = Int.init(2017) as AnyObject

dictStudent4["sname"] = dictName3 as AnyObject
dictStudent4["address"] = dictAddr3 as AnyObject
dictStudent4["birthdate"] = dictBirthDate3 as AnyObject

var dictStudent5 = [String : AnyObject]()
dictStudent5["id"] = "C005" as AnyObject

var dictName4 = [String:String]()
dictName4["firstname"] = "James"
dictName4["lastname"] = "Smith"

var dictAddr4 = [String:AnyObject]()
dictAddr4["street"] = "asdas" as AnyObject
dictAddr4["aprtmentno"] = Int.init(111) as AnyObject
dictAddr4["city"] = "Toronto" as AnyObject
dictAddr4["zip"] = "M1H1G4" as AnyObject

var dictBirthDate4 = [String:AnyObject]()
dictBirthDate4["dd"] = Int.init(13) as AnyObject
dictBirthDate4["mm"] = Int.init(9) as AnyObject
dictBirthDate4["yy"] = Int.init(2017) as AnyObject

dictStudent5["sname"] = dictName4 as AnyObject
dictStudent5["address"] = dictAddr4 as AnyObject
dictStudent5["birthdate"] = dictBirthDate4 as AnyObject

var arrayStudent = [dictStudent1,dictStudent2, dictStudent3, dictStudent4, dictStudent5]

var dictStudents = ["s1":dictStudent1, "s2":dictStudent2, "s3":dictStudent3, "s4":dictStudent4, "s5":dictStudent5]

print("dictionary Students --- > \(dictStudents)")
print("array students ---> \(arrayStudent)")

print(dictStudent1)
print(dictStudent2)
print(dictStudent3)
print(dictStudent4)
print(dictStudent5)
