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
        // replace this comment with your answer
        print(extraCreditOne(someInts:[1,2,4,5]))
        // if you do the extra credit, keep it above the line
        print(addArrayOfInt(someInts: [1,2,4,5]))
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        // replace this comment with your answer
        print(questionTwo(dict: someCapitals))
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        // replace this comment with your answer
        print(questionThree(dict: someCapitals))
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        // replace this comment with your answer
        print(hiFriend())

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        // replace this comment with your answer
        print(safeOrDanger(input: Ship.friend))
        
        print("\nA. 5 test 2")
        // replace this comment with your answer
        print(safeOrDanger(input: Ship.battle))

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
        print(mapClone(arr: ["kadell", "john", "jessica"]) {(a:String) in
            for b in a.characters {
                return b.hashValue
            }
            return nil
            } ?? 0)
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        // replace this comment with your answer
        print(ing(arr: mixedVerbs))
        
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
        // replace this comment with your answer
//        print(object())
        dump(object())

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        // replace this comment with your answer
//        print("---------")
        dump(sortByName())
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        // replace this comment with your answer
//        print("---------")
        dump(sortByID())

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        // replace this comment with your answer
        // if you do the extra credit, keep it above the line
//        print(tamashiiRamen())
        dump(tamashiiRamen())
    
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        
        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("If you are talking about the array I just built, i didnt see the other arrays change. I may be wrong however arent classes reference types meaning that they shouldnt and wont change the other arrays before them")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")

        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("If C4QStudent was a struct the items of the array would be immutable and value type")
        
    }
    
    func extraCreditOne(someInts: [Int]) -> Int {
        return someInts.reduce(0, +)
    }
    
    
    func addArrayOfInt(someInts: [Int]) -> Int {
        var sum = 0
        
        for nums in someInts {
            sum += nums
        }
        return sum
    }

    
    func questionTwo(dict: [String:String]) -> String {
        return dict["Arkansas"]!
    }
    
    func questionThree(dict: [String: String]) -> String  {
        var state = ""
        
        for (key, value) in dict {
            if value == "Denver" {
                state += key
            }
        }
        
        return state
    }
    
    func hiFriend() -> String {
        return "Hi, \(Ship.friend.rawValue), let's do \(Ship.battle.rawValue)"
    }
    
    func safeOrDanger (input: Ship) -> String {
        return input.rawValue == "friend" ? "SAFE" : "DANGER"
        
    }
    
    // The year is 2018. You've been called on to decipher a list of inputs that
    // are suspected to represent numbers. Apple, in an effort to do its part in
    // keeping jobs in America has removed the map function from the library.
    // Write a simple clone of the map function. It should take as its two
    // parameters an array of String and a closure of type (String)->Int?
    // Call your function with a suitable closure to interpret the elements
    // from property numb3rs. You should have two results.
    
    func mapClone(arr: [String], closure: (String) -> Int? ) -> Int? {
        
        for x in arr {
           return closure(x)
        }
    return nil
    }
    
    func ing(arr: [String]) -> [String] {
        return arr.filter {$0.hasSuffix("ing") }
    }
    
    func object() -> [C4QStudent] {
        var array = [C4QStudent]()
        array.append(C4QStudent(name: "Jermaine", id: 83, favoriteLunch: "Millie's"))
        array.append(C4QStudent(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese"))
        array.append(C4QStudent(name: "Miti", id: 77, favoriteLunch: "Subway"))
        array.append(C4QStudent(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza"))
        array.append(C4QStudent(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner"))
        return array
    }
    
    func sortByName() -> [C4QStudent] {
        return object().sorted { $0.name < $1.name}
    }
    
    func sortByID() -> [C4QStudent] {
        return object().sorted{ $0.id <  $1.id }
    }
  
    func tamashiiRamen() -> [C4QStudent]  {
        let changed = object()
        for items in changed {
            items.favoriteLunch = "Tamashii Ramen"
        }
        return changed
    }
    
    
   
    
}



