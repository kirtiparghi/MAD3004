//: Playground - noun: a place where people can play

import UIKit

print("Day - 11 [ Generics Example ] ")

//Generic Function Example
func swipe<T>(a : inout T, b : inout T)
{
    let c = a
    a = b
    b = c
}

print("---------------------------")
print("Integer x & y")
var x1 = 10, y1 = 20
print(x1,y1)
swipe(a: &x1,b: &y1)
print(x1,y1)

print("---------------------------")
print("String x & y")
var x2 = "Pritesh", y2 = "Patel"
print(x2,y2)
swipe(a: &x2,b: &y2)
print(x2,y2)

print("---------------------------")
print("Double x & y")
var x3 = 100.0, y3 = 200.0
print(x3,y3)
swipe(a: &x3,b: &y3)
print(x3,y3)

//Generic Class Example
class Swipe<T>{
    var a: T?
    var b: T?
    
    func setData(_ a : T, _ b : T) {
        self.a = a
        self.b = b
    }
    func swipe()
    {
        let c = a
        a = b
        b = c
    }
    
    func display() {
        print(self.a!, self.b!)
    }
}

print("---------------------------")
print("Integer within class x & y")
var s1 = Swipe<Int>()
s1.setData(x1, y1)
s1.display()
s1.swipe()
s1.display()

print("---------------------------")
print("String within class x & y")
var s2 = Swipe<String>()
s2.setData(x2, y2)
s2.display()
s2.swipe()
s2.display()
