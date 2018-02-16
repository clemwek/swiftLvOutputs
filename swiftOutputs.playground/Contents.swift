//: Playground - noun: a place where people can play

import UIKit

//: ### Create a function in Swift Playground that can parse different data types and return a result depending on the parameters data types present. 
func checkType(dataType: Any) -> String {
    return "\(type(of: dataType))"
}

checkType(dataType: true)

//: ### Create an extension of the String class with a method that returns an Array of words in a sentence called words.

extension String {
    func getWords() -> [String] {
        return self.components(separatedBy: " ")
    }
}

let name: String = "clement wekesa wafula"
name.getWords()

//: ### Create a Swift Playground project that handles errors generated from bad inputs into a function and performs a different operation to cater for the error thrown that allows for normal operation of the application.

func randomLuchCheck(_ userInput: String) throws -> String {
    guard let userInput = Int(userInput) else {
        return "In put must be a integert"
    }
    let randomNumber = Int(arc4random_uniform(10))
    if randomNumber == userInput {
        return "Lucky answer, you WIN"
    }

    return "Try again..."
}

do {
  try  randomLuchCheck("5")
} catch let error {
print("some error \(error)")
}
