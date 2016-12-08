//
//  ViewController.swift
//  AC3.2-MidtermSwiftFundamentals
//
//  Created by Jason Gresh on 12/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

enum Ship: String {
    case battle
    case friend
}

class C4QStudent {
    let name: String
    let id: Int
    var favoriteLunch: String
    
    init(name: String, id: Int, favoriteLunch: String) {
        self.name = name
        self.id = id
        self.favoriteLunch = favoriteLunch
    }
}

class ViewController: UIViewController {
    let someInts = [32, 11, 75, 42]
    let mixedVerbs = ["canoeing", "hiking", "be", "camping", "drive", "drink", "shampooing"]
    let numb3rs = ["one", "2", "3hree", "4", "deed", "feed"]

    let someCapitals = ["Alabama" : "Montgomery",
                        "Alaska" : "Juneau",
                        "Arizona" : "Phoenix",
                        "Arkansas" : "Little Rock",
                        "California" : "Sacramento",
                        "Colorado" : "Denver"]
    
    var a = "asd"
    override func viewDidLoad() {
        super.viewDidLoad()

        // General Instructions
        // Most problems are defined in terms of a function with a return.
        // For each, define the function and call it, capture its return and call
        // print() after the existing marker. Keep all those markers in place.
        // They help you and me.
        
        // Q. 1
        // Write a function that sums an input array of Int and returns an Int.
        // Use the property someInts as input.
        //
        // E.C. Solve using a higher order function.
        
        print("A. 1")
        print(sum(arr: someInts))
        print(sumHOrder(arr: someInts))
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        print(findCapital(state: "Arkansas", arr: someCapitals) ?? "not found")
        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        print(findState(capital: "Denver", arr: someCapitals) ?? "not found")
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        print(saidHi())
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        print(checkCondition(condi: Ship.friend))
        
        print("\nA. 5 test 2")
        print(checkCondition(condi: Ship.battle))
        print("---------")

        // Q. 6
        // The year is 2018. You've been called on to decipher a list of inputs that 
        // are suspected to represent numbers. Apple, in an effort to do its part in
        // keeping jobs in America has removed the map function from the library.
        // Write a simple clone of the map function. It should take as its two
        // parameters an array of String and a closure of type (String)->Int?
        // Call your function with a suitable closure to interpret the elements
        // from property numb3rs. You should have two results.
        //
        // E.C. Make a second call to your function with a new closure that 
        // returns more numbers. I was able to get 4 Ints.
        
        print("\nA. 6")
        print(myMap(numb3rs) {Int($0) })
        print(myMap(numb3rs) { Int($0.components(separatedBy: CharacterSet.letters).reduce("") { $0 + $1 }) })
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        dump(myFilter(arr: mixedVerbs, findFrench: { $0.hasSuffix("ing") }))
        print("---------")
        
        // Q. 8a
        // Create a class C4QStudent with the following properties:
        //   
        //   let name: String
        //   let id: Int
        //   var favoriteLunch: String
        // 
        // Create an init method that sets all three properties from parameters passed in.
        
        // Q. 8b
        // 
        //  Make an instance of C4QStudent from each line of data below (5 total), and put them in
        //  an array. dump() the array.
        // 
        //    Jermaine, 83, Millie's
        //    Kadell, 23, Vernon Blvd. Chinese
        //    Miti, 77, Subway
        //    Sabrina, 68, Vernon Blvd. Pizza
        //    Marcel, 39, Court Sq. Diner
        //
        
        print("\nA. 8b")
        var students: [C4QStudent] = []
        students.append(C4QStudent(name: "Jermaine", id: 83, favoriteLunch: "Millie's"))
        students.append(C4QStudent(name: "Kadell", id: 23, favoriteLunch: "MVernon Blvd. Chinese"))
        students.append(C4QStudent(name: "Miti", id: 77, favoriteLunch: "Subway"))
        students.append(C4QStudent(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza"))
        students.append(C4QStudent(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner"))
        dump(students)
        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        let byName = students.sorted { $0.name < $1.name }
        dump(byName)
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        let byID = students.sorted { $0.id < $1.id }
        dump(byID)
        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        var sameFavorite: [C4QStudent] = []
        for student in students{
            sameFavorite.append(C4QStudent(name: student.name, id: student.id, favoriteLunch: "Tamashii Ramen"))
        }
        dump(sameFavorite)
        
        let sameFavoriteHOrder = students.map{ (student) -> C4QStudent in
            return C4QStudent(name: student.name, id: student.id, favoriteLunch: "Tamashii Ramen") }
        dump(sameFavoriteHOrder)
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        
        print("\nA. 9")
        print("The C4QStudent is a class which means it pass by reference. When you modify the variable that reference to the original value, it change the original value, thus the reference variable will changed base on original value.")
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")
        print("If C4QStudent was a struct, it will make a copy of C4QStudent when you assign it to a new variable. All it’s copy are independent variable, and it will not update the array when u change the value of copies.")
        print("---------")
    }
    
    // MARK: - My functions
    func sum(arr: [Int]) -> Int{
        var sum = 0
        for num in arr{
            sum += num
        }
        return sum
    }
    
    func sumHOrder(arr: [Int]) -> Int{
        return arr.reduce(0) { $0 + $1 }
    }
    
    func findCapital(state: String, arr: [String: String]) -> String?{
        if arr[state] != nil{
            return arr[state]
        }
        return nil
    }
    
    func findState(capital: String, arr: [String: String]) -> String?{
        for (key, value) in arr{
            if value == capital{
                return key
            }
        }
        return nil
    }
    
    func saidHi() -> String{
        return "Hi, \(Ship.friend.rawValue), let's do \(Ship.battle.rawValue)"
    }
    
    func checkCondition(condi: Ship) -> String{
        switch condi {
        case .friend:
            return "SAVE"
        case .battle:
            return "DANGER"
        }
    }
    
    func myMap(_ arr: [String], _ toInt: (String) -> Int?) -> [Int] {
        var arrInt: [Int] = []
        for str in arr{
            if let num = toInt(str){
                arrInt.append(num)
            }
        }
        return arrInt
    }
    
    func myFilter(arr: [String], findFrench: (String) -> Bool) -> [String] {
        var allFrenchWord: [String] = []
        for word in arr{
            if findFrench(word){
                allFrenchWord.append(word)
            }
        }
        return allFrenchWord
    }
    
    
    
    
    
}


