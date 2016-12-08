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
        
        print("\nA. 1")
        // replace this comment with your answer
        // if you do the extra credit, keep it above the line
        print(sumOf(arr: someInts))
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        // replace this comment with your answer
        print(findCapital(dict: someCapitals, state: "Arkansas"))
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        // replace this comment with your answer
        print(findState(dict: someCapitals, capital: "Denver"))
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        // replace this comment with your answer
        print(sendMsg())

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        // replace this comment with your answer
        
        print(areYouSafe(friendOrFoe: .battle))
        // replace this comment with your answer
        print(areYouSafe(friendOrFoe: .friend))

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
        // replace this comment with your answer
        print(verbings(arr: mixedVerbs))
        
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
        print(dump(students))

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        // replace this comment with your answer
        print(nameSort(arr: students))
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        // replace this comment with your answer
        print(idSort(arr: students))

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        // replace this comment with your answer
        // if you do the extra credit, keep it above the line
        print(restaurants(arr: students))
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        
        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("I believe it's because the arrays are a part of the class, which means that their values and its changes can be passed along or inherited.")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")

        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("Structs use reference values, which means that once the value is set within the struct, it can be referenced but not mutated.")
        
    }
    //Question 1
    func sumOf(arr: [Int]) -> Int {
        var sum = 0
        sum = arr.reduce(0) { $0 + $1 }
        return sum
    }
    
    //Question 2
    func findCapital(dict: [String:String], state: String) -> String {
        var capital = ""
        for (key, value) in dict {
            if key == state {
                capital = value
            }
        }
        return capital
    }
    
    //Question 3
    func findState(dict: [String:String], capital: String) -> String {
        var state = ""
        for (key, value) in dict {
            if value == capital {
                state = key
            }
        }
        return state
    }
    
    //Question 4
    func sendMsg() -> String {
        return "Hi, \(Ship.friend), let's do \(Ship.battle)"
    }
    
    //Question 5
    func areYouSafe(friendOrFoe: Ship) -> String {
        if friendOrFoe == Ship.friend {
            return "SAFE"
        } else {
            return "DANGER"
        }
    }
    
    //Question 6
    
    
    //Question 7
    func verbings(arr: [String]) -> [String] {
        var filteredVerbs = [String]()
        let ing = "ing"
        for verb in arr {
            if verb.contains(ing) {
                filteredVerbs.append(verb)
            }
        }
        return filteredVerbs
    }

    //Question 8
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
    
    //8b
    var students = [
        C4QStudent(name: "Jermaine", id: 83, favoriteLunch: "Millie's"),
        C4QStudent(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese"),
        C4QStudent(name: "Miti", id: 77, favoriteLunch: "Subway"),
        C4QStudent(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza"),
        C4QStudent(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner")
    ]
    
    
   //8c
    func nameSort(arr: [C4QStudent]) -> [C4QStudent] {
        var newArr = [String]()
        var sortedStudents = [C4QStudent]()
        
        for name in students {
            newArr.append(name.name)
            newArr = newArr.sorted(by: <)
        }
        
        
        for nombre in newArr {
            for name in students {
                if name.name == nombre {
                    sortedStudents.append(name)
                }
            }
        }
        
        return sortedStudents
    }
    
    //8d
    func idSort(arr: [C4QStudent]) -> [C4QStudent] {
        var newArr = [Int]()
        var sortedStudents = [C4QStudent]()
        
        for id in students {
            newArr.append(id.id)
            newArr = newArr.sorted(by: <)
        }
        
        
        for num in newArr {
            for id in students {
                if id.id == num {
                    sortedStudents.append(id)
                }
            }
        }
        
        return sortedStudents
    }
    
    //8e
    func restaurants(arr: [C4QStudent]) -> [C4QStudent] {
        for favorite in arr {
            favorite.favoriteLunch = "Tamashii Ramen"
        }
        return arr
    }
    
    
}


