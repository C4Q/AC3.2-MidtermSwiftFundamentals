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
        print(sumsInts(for: someInts))
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        print(capitalOf(city: "Arkansas", in: someCapitals))
        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        print(stateOf(capital: "Denver", in: someCapitals))
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        print(battleshipString())
        print("---------")
        
        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        print(friendOrFoe(for: notJason))
        
        print("\nA. 5 test 2")
        print(friendOrFoe(for: jason))
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
        print(myMap(input: numb3rs, closure: closure))
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        print(actionVerbs(for: mixedVerbs))
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
        let studentArray = [
            C4QStudent(name: "Jermaine", id: 83, favoriteLunch: "Millie's"),
            C4QStudent(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese"),
            C4QStudent(name: "Miti", id: 77, favoriteLunch: "Subway"),
            C4QStudent(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza"),
            C4QStudent(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner")
        ]
        dump(studentArray)
        print("---------")
        
        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        let sortedStudentArray = studentArray.sorted { $0.name < $1.name }
        dump(sortedStudentArray)
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        let idStudentArray = studentArray.sorted { $0.id < $1.id }
        dump(idStudentArray)
        print("---------")
        
        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        for all in studentArray {
            all.favoriteLunch = "Tamashii Ramen"
        }
        dump(studentArray)
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        print("Classes pass by reference.")
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")
        print("Structs pass by value, so the arrays would keep its previous value when it was defined? Or something.")
        print("---------")
    }
    
    func sumsInts(for input: [Int]) -> Int {
        return input.reduce(0, +)
    }
    
    func capitalOf(city: String, in dict: [String : String]) -> String {
        if let capital = dict[city] {
            return capital
        }
        return "Not Found"
    }

    func stateOf(capital: String, in dict: [String : String]) -> String {
        for (state, cap) in dict where cap == capital {
            return state
        }
        return "Not Found"
    }
    
    func battleshipString() -> String {
        return "Hi, \(Ship.friend), let's do \(Ship.battle)"
    }
    
    let notJason = Ship.friend
    let jason = Ship.battle
    
    func friendOrFoe(for ship: Ship) -> String {
        switch ship {
        case .battle:
            return "DANGER"
        case .friend:
            return "SAFE"
        }
    }
    
    let closure = { (a: String) in
        return Int(a)
    }
    
    func myMap(input: [String], closure: (String) -> Int?) -> [Int] {
        var nums = [Int]()
        for possibleNum in input {
            if let num = closure(possibleNum) {
                nums.append(num)
            }
        }
        return nums
    }

    func actionVerbs(for input: [String]) -> [String] {
        return input.filter{$0.contains("ing")}
    }

    class C4QStudent {
        let name: String
        let id: Int
        var favoriteLunch: String
        
        init(name: String, id: Int, favoriteLunch:String) {
            self.name = name
            self.id = id
            self.favoriteLunch = favoriteLunch
        }
    }
    
    
    
}


