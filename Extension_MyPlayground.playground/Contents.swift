//: Playground - noun: a place where people can play

import UIKit

extension String {
    
    var vowels:[String] {
        get {
            var dict:[String] = [String]()
            for character in self.characters {
                if character == "a" || character == "e" || character == "i" || character == "o" || character == "u" {
                    dict.append(String(character))
                }
            }
            return dict
        }
    }
}

var s : String = "hello"
print(s.vowels)

var s1 : String = "john"
print(s1.vowels)

