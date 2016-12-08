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
        
        //print(addUpArray(arr: someInts))
        print(addUpArrayWithHigherOrderFunc(arr: someInts))
        print("------------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        print(someCapitals["Arkansas"]!)
        print("----------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        for states in someCapitals {
            if states.value == "Denver" {
                print(states.key)
            }
        }

        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        print(printThisString())
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        print(safeOrDanger(otherShip: .friend))
        
        print("\nA. 5 test 2")
        print(safeOrDanger(otherShip: .battle))
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
        //Closures still trip me up.
        //print(arrayAndClosure(arr: numb3rs))
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        print(containsING(arr: mixedVerbs))
        print("---------")
        
        // Q. 8a
        // Create a class C4QStudent with the following properties:
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
        let Jermaine = C4QStudent.init(name: "Jermaine", id: 83, favoriteLunch: "Millie's")
        let Kadell = C4QStudent(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese")
        let Miti = C4QStudent.init(name: "Miti", id: 77, favoriteLunch: "Subway")
        let Sabrina = C4QStudent.init(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza")
        let Marcel = C4QStudent.init(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner")
        let studentArray = [Marcel, Kadell, Miti, Sabrina, Marcel]
        dump(studentArray)
        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        let sortedNameArray = [Jermaine, Kadell, Miti, Sabrina, Marcel].map{$0.name}.sorted {$0 < $1}
        dump(sortedNameArray)
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        let sortedIdArray = [Jermaine, Kadell, Miti, Sabrina, Marcel].map{$0.id}.sorted {$0 < $1 }
        dump(sortedIdArray)
        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        let tamashiiRamenLunch = [Jermaine, Kadell, Miti, Sabrina, Marcel].map{$0.name.replacingOccurrences(of: $0.name, with: "Tamashii Ramen")}
        dump(tamashiiRamenLunch)
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        
         print(
        "If multiple arrays refer to the same object then the changes would be seen in all of the arrays"
        )
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")

         print(
             "For one, we would get a free initializer so the  " +
             "writing it out would be a bit different and shorter, also a struct"
         )
        print("---------")
        
    }
    func addUpArray(arr: [Int]) -> Int {
        var sum = 0
        for i in arr {
            sum += i
        }
        return sum
    }
    
    func addUpArrayWithHigherOrderFunc(arr: [Int]) -> Int {
        let addTwo: (Int, Int) -> Int = { x, y in x + y }
        return arr.reduce(0, addTwo)
    }

    func printThisString() -> String {
        return "Hi, \(Ship.friend), let's do \(Ship.battle)"
    }
    
    func safeOrDanger(otherShip: Ship) -> String {
        if otherShip == .friend {
            return "SAFE"
        } else {
            return "DANGER"
        }
    }
    
    func containsING(arr: [String]) -> [String] {
        var finalArray: [String] = []
        for word in arr {
            if word.contains("ing") {
                finalArray.append(word)
            }
        }
        return finalArray
    }
    
    func arrayAndClosure(arr: [String], closure: (String) -> Int?) -> [Int] {
        var finalArray: [Int] = []
        for i in arr {
            if (Int(i) != nil) {
                finalArray.append(Int(i)!)
            }
        }
        return finalArray
    }


}


