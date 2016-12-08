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
        print(q1(arr: someInts))
        print(q1EC(arr: someInts))
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        print(q2(ofState: "Arkansas", someCapitals) ?? "that Isn't some capitol")
        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        print(q3(city: "Denver", someCapitals) ?? "that isn't a State Capitol in our database yo.")
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        print(q4())
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
            print(q5(friendOrFoe: .friend))
        print("\nA. 5 test 2")
            print(q5(friendOrFoe: .battle))
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
        print(q6(arr: numb3rs){Int($0)})
        
        
        print(q6(arr: numb3rs){(a: String) -> Int? in
            if Int(a) == nil {
                let intAsString: Int
                switch a {
                case "one":
                    intAsString = 1
                case "3hree":
                    intAsString = 3
                default:
                    return nil
                }
                return intAsString
                
            }
            return Int(a)!
        })
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        print(q7(arr: mixedVerbs))
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
        dump(C4QStudent.q8())
        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        dump(C4QStudent.q8().sorted{ $0.name < $1.name })
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        dump(C4QStudent.q8().sorted{ $0.id < $1.id })

        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        dump(C4QStudent.q8().map{$0.favouriteLunch = "Tamashii Ramen"})
        dump(C4QStudent.q8().map{(a: C4QStudent) -> C4QStudent in
            let newStudent = a
            newStudent.favouriteLunch = "Takashii Ramen"
            return newStudent
            }
        )
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        print("Classes are a reference type, which means that when you call out to the class, you aren't creating a new one, you are just pointing to the original. Thus if you change something about it it will change the actual class.")
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")

        print("It would create a bunch of different structs everytime it needed to access a Student. This would preserve the original in each function call because you are literally making a completely seperate struct that doesn't know about the first beyond starting as a carbon copy. ")
        print("---------")
        
    }
    
    //MARK: FUNctions
    func q1 (arr: [Int]) -> Int {
        var sum = 0
        for int in arr {
            sum += int
        }
        return sum
    }
    
    func q1EC (arr: [Int]) -> Int {
        return arr.reduce(0, {$0 + $1})
    }
    
    func q2(ofState: String, _ dict: [String: String]) -> String? {
        return dict[ofState]
    }
    
    func q3(city: String, _ dict: [String: String]) -> String? {
        for key in dict.keys {
            if dict[key] == city {
                return key
            }
        }
        return nil
    }
    func q4() -> String {
        return "Hi, \(Ship.friend.rawValue), let's do \(Ship.battle.rawValue)"
    }
    
    func q5(friendOrFoe: Ship) -> String {
        switch friendOrFoe {
        case .friend:
            return "SAFE"
        case .battle:
            return "DANGER"
        }
    }
    
    func q6 (arr: [String], closure: (String) -> Int?) -> [Int] {
        var results: [Int] = []
        for element in arr {
            if let e = closure(element) {
                results.append(e)
            }
        }
        return results
    }

    func q7 (arr: [String]) -> [String] {
        return arr.filter{$0.hasSuffix("ing")}
    }
    
    
}


