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
        let sum = sumArray(arr: someInts)
        print(sum)
        
        let sum2 = someInts.reduce(0, +)
        print(sum2)
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        print(someCapitals["Arkansas"]!)
        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        let denverState = someCapitals.filter { (key: String, value: String) -> Bool in
            if value == "Denver" {
                return true
            }
            return false
        }
        print(denverState.last!.key)
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        let battleOut = doBattle()
        print(battleOut)
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        var check = checkShip(ship: .battle)
        print(check)
        print("\nA. 5 test 2")
        check = checkShip(ship: .friend)
        print(check)
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
        let dec = mapInt(str: numb3rs) { Int($0) }
        let hex = mapInt(str: numb3rs) { Int($0, radix: 16) }
        
        print(dec)
        print(hex)
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        let gerunds = mixedVerbs.filter { $0.hasSuffix("ing")}
        print(gerunds)
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
        var studentInput = ["Jermaine,83,Millie's"]
        studentInput.append("Kadell,23,Vernon Blvd. Chinese")
        studentInput.append("Miti,77,Subway")
        studentInput.append("Sabrina,68,Vernon Blvd. Pizza")
        studentInput.append("Marcel,39,Court Sq. Diner")
        var students = [C4QStudent]()
        
        for el in studentInput {
            let fields = el.components(separatedBy: ",")
            let id = Int(fields[1])!
            let student = C4QStudent(name: fields[0], id: id, lunch: fields[2])
            students.append(student)
        }
        dump(students)
        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        let alpha = students.sorted { $0.name < $1.name }
        dump(alpha)
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        let ids = students.sorted { $0.id < $1.id }
        dump(ids)
        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        _ = alpha.map { $0.favoriteLunch = "Tamashii" }
        
        print("students")
        dump(students)
        print("alpha")
        dump(alpha)
        print("ids")
        dump(ids)
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        
         print(
             "Classes are reference types so updating elements of one array affects " +
             "those instances that are contained in the other arrays"
         )
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")

         print(
             "Changing one array of structs would not affect the other arrays " +
             "as each of the sorted arrays would have copied instances of the original."
         )
        print("---------")
        
    }
    func sumArray(arr: [Int]) -> Int {
        var sum = 0
        for i in arr {
            sum += i
        }
        return sum
    }
    
    func doBattle() -> String {
        return "Hi, \(Ship.friend), let's do \(Ship.battle)"
    }
    
    func checkShip(ship: Ship) -> String {
        switch ship {
        case .friend:
            return "SAFE"
        default:
            return "DANGER"
        }
    }
    
    func mapInt(str: [String], f: (String)->Int?) -> [Int] {
        var ret: [Int] = []
        
        for s in str {
            if let i = f(s) {
                ret.append(i)
            }
        }
        return ret
    }
}

class C4QStudent : CustomStringConvertible {
    let name: String
    let id: Int
    var favoriteLunch: String
    
    init(name: String, id: Int, lunch: String) {
        self.name = name
        self.id = id
        self.favoriteLunch = lunch
    }
    
    var description: String {
        return "\(name) - \(id) - \(favoriteLunch)"
    }
}


