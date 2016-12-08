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
    var students = [C4QStudent]()
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
        print(sumOfArr(input: someInts))
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        print(nameThatCapital(dict: someCapitals)!)
        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational  :) reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        print(whatStateAmIin(dict: someCapitals, capital: "Denver"))
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        print(battleShipGreeting())
        print("---------")
        
        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        print(shipStatus(ship: .battle))
        
        print("\nA. 5 test 2")
        print(shipStatus(ship: .friend))
        print("---------")
        
        //MARK: - come back to this
        // Q. 6 **
        // The year is 2018. You've been called on to decipher a list of inputs that
        // are suspected to represent numbers. Apple, in an effort to do its part in
        // keeping jobs in America has removed the map function from the library.
        // Write a simple clone of the map function. It should take as its two
        // parameters an array of String and a closure of type (String)->Int?
        // Call your function with a suitable closure to interpret the elements
        // from property numb3rs. You should have two results.
        //  SHOULD BE LIKE FILTER FUNCTION
        // E.C. Make a second call to your function with a new closure that
        // returns more numbers. I was able to get 4 Ints.
        
        print("\nA. 6")
        print(deciperCode(inputArr: numb3rs, closure: { (a: String) -> Int? in
            return Int(a)
        }))
        
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        print(babble(inputArr: mixedVerbs))
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
        print(makeStudent())
        print("---------")
        
        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        print(sortByStudentName(inputArr: self.students))
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        print(sortByStudentID(inputArr: self.students))
        print("---------")
        
        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        print(changeLunch(inputArr: self.students))
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        
         print(
             "The arrays are class properities, thus are referenced type. Changing the value of one array will change the value from the same referenced value."
         )
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")
        
         print(
             "Since structs are of value type, an instance from a struct is essentially a copy of an object.  Changing the value of new instances won't change other instances made from the same struct."
         )
        print("---------")
        
    }
    
    //MARK: - Answer Functions
    
    // Q. 1
    // Write a function that sums an input array of Int and returns an Int.
    // Use the property someInts as input.
    //
    // E.C. Solve using a higher order function.
    func sumOfArr(input arr: [Int]) -> Int {
        return arr.reduce(1,*)
    }
    
    // Q. 2
    // You're back in 3rd grade. What's the capital of Arkansas?
    // Print the answer using the someCapitals dictionary.
    func nameThatCapital(dict: [String: String]) -> String? {
        guard let capital = dict["Arkansas"] else { return nil }
        return capital
    }
    
    // Q. 3
    // You're in Denver for legal recreational reasons and have subsequently
    // forgotten what state you're in. Use the someCapitals dictionary
    // to find out and print the state.
    
    func whatStateAmIin(dict: [String: String], capital: String) -> String {
        var state = ""
        for (key, value) in dict {
            if value == capital {
                state = key
            }
        }
        return state
    }
    
    // Q. 4
    // Write a function that takes no arguments and returns
    // the String, "Hi, friend, let's do battle" using the
    // Ship enum.
    
    func battleShipGreeting() -> String {
        return ("Hi, \(Ship.friend), let's do \(Ship.battle)...")
    }
    
    // Q. 5
    // Write a function that takes an instance of Ship as its parameter
    // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
    // Test and print both cases
    
    func shipStatus(ship: Ship) -> String {
        switch ship {
        case .battle:
            return "DANGER"
        case .friend:
            return "SAFE"
        }
    }
    
    // Q. 6 **Not sure
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
    
    func deciperCode(inputArr: [String], closure filter: (String) -> Int?) {
    }
    
    
    // Q. 7
    // You got a job translating loan words from English into French. For some unknown reason
    // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
    // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
    // Output: ["canoeing", "hiking", "camping", "shampooing"]
    
    func babble(inputArr: [String]) -> [String] {
        var ingWords = [String]()
        for word in inputArr {
            if word.contains("ing") {
                ingWords.append(word)
            }
        }
        return ingWords
    }
    
    // Q. 8a
    // Create a class C4QStudent with the following properties:
    //
    //   let name: String
    //   let id: Int
    //   var favoriteLunch: String
    //
    // Create an init method that sets all three properties from parameters passed in.
    
        // << SWIFT FILE MADE
    
        
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
    func makeStudent() {
            self.students.append(C4QStudent.init(name: "Jermaine", id: 83, favoriteLunch: "Millie's"))
            self.students.append(C4QStudent.init(name: "Kadell", id: 23, favoriteLunch: "Chinese"))
            self.students.append(C4QStudent.init(name: "Miti", id: 77, favoriteLunch: "Subway"))
            self.students.append(C4QStudent.init(name: "Sabrina", id: 68, favoriteLunch: "Pizza"))
            self.students.append(C4QStudent.init(name: "Marcel", id: 39, favoriteLunch: "Diner"))
        dump(self.students)
    }
    
    // Q. 8c**
    // Create a new array by sorting by name. dump() it.
    
    func sortByStudentName(inputArr: [C4QStudent]) {
        self.students.sort { (a, b) -> Bool in
            return a.name < b.name
        }
        dump(self.students)
    }
    
    // Q. 8d
    // Create a new array by sorting by id. dump() it.
    
    func sortByStudentID(inputArr: [C4QStudent]) {
        self.students.sort { (a, b) -> Bool in
            return a.id < b.id
        }
        dump(self.students)
    }
    
    
    // Q. 8e
    // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
    //
    // E.C. Solve using a higher order function.
    func changeLunch(inputArr: [C4QStudent]) {
        for studentDict in inputArr {
            studentDict.favoriteLunch = "Tamashii Ramen"
        }
        dump(self.students)
    }
   
    
    
    
}


