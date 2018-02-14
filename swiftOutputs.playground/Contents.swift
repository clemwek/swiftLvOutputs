//: Playground - noun: a place where people can play

import UIKit

//: ### Create a function in Swift Playground that can parse different data types and return a result depending on the parameters data types present. 
func checkType(dataType: Any) -> String {
    return "\(type(of: dataType))"
}

checkType(dataType: true)
