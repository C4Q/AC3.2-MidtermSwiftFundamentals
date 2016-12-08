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
        
        func sumArrOfInts(arr:[Int]) -> Int {
            var x = 0
            for i in arr {
                x += i
            }
            return x
        }

        let answer = sumArrOfInts(arr: someInts)
        print(answer)

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
        for (state, capital) in someCapitals where capital == "Denver" {
            print(state)
        }

        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        func hi() -> String {
            return "Hi, \(Ship.friend), let's do \(Ship.battle)"
        }
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        let friend = Ship.friend
        let enemy = Ship.battle
        
        func friendOrBattle(for ship: Ship) -> String {
            switch ship {
            case .battle:
                return "DANGER"
            case .friend:
                return "SAFE"
            }
        }
        print(friendOrBattle(for: friend))
        print("\nA. 5 test 2")
        print(friendOrBattle(for: enemy))
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
        // replace this comment with your answer
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        print(mixedVerbs.filter { $0.hasSuffix("ing") })
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
        
        let studentObjectsArr = [
            C4QStudent(name: "Jermaine", id: 83, favoriteLunch: "Millie's"),
            C4QStudent(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese"),
            C4QStudent(name: "Miti", id: 77, favoriteLunch: "Subway"),
            C4QStudent(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza"),
            C4QStudent(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner")
        ]
        dump(studentObjectsArr)

        
        
        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        let sortedByName = studentObjectsArr.sorted { $0.name < $1.name }
        dump(sortedByName)
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        let sortedByID = studentObjectsArr.sorted { $0.id < $1.id }
        dump(sortedByID)
        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        print(mixedVerbs.filter { $0.hasSuffix("ing") })
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        
        // print(
        //Classes have reference pointers so each instance of the class points to the same place in memory so everything changes, once a change is made
        // )
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
                print("\nA. 10")
        // A struct is a value type and it copies itself in the new instance so if you change it, it will only be in that instance.

                print("---------")
        
    }
    
    
    
}


