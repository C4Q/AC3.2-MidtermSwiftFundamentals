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
        func sumOfInts(input: [Int]) -> Int {
            var counter = 0
            for number in input {
                counter += number
            }
            return counter
        }
        
        func sumOfIntsEC(input: [Int]) -> Int {
            return input.reduce(0,+)
        }
        
        print("A. 1")
        let answer1 = sumOfInts(input: self.someInts)
        print(answer1)
        
        let answer1EC = sumOfIntsEC(input: self.someInts)
        print("Extra Credit: \(answer1EC)")
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        func capitalOfArkansas(input: [String: String]) -> String {
            return input["Arkansas"]!
        }
        
        print("\nA. 2")
        let answer2 = capitalOfArkansas(input: self.someCapitals)
        print(answer2)
        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        func findState(input: [String: String]) -> String {
            var state: String?
            for (key, value) in input {
                if value == "Denver" {
                    state = key
                }
            }
            return state!
        }

        print("\nA. 3")
        let answer3 = findState(input: self.someCapitals)
        print(answer3)
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        func battleshipString() -> String {
            let battleString = Ship.battle.rawValue
            let friendString = Ship.friend.rawValue
            return "Hi, \(friendString), let's do \(battleString)"
        }
        
        print("\nA. 4")
        let answer4 = battleshipString()
        print(answer4)
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        func safeOrDanger(input: Ship) -> String {
            switch input {
            case .battle:
                return "DANGER"
            case .friend:
                return "SAFE"
            }
        }
        
        print("\nA. 5 test 1")
        let answer5test1 = safeOrDanger(input: .battle)
        print(answer5test1)
        
        print("\nA. 5 test 2")
        let answer5test2 = safeOrDanger(input: .friend)
        print(answer5test2)
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
        func myMap(array: [String], closure: (String) -> Int?) -> [Int] {
            var newArray: [Int] = []
            for string in array {
                if let element = closure(string) {
                    newArray.append(element)
                }
            }
            return newArray
        }

        print("\nA. 6")
        let answer6 = myMap(array: self.numb3rs) { (string: String) -> Int? in
            return Int(string)
        }
        print(answer6)
        
        let answer6EC = myMap(array: self.numb3rs) { (string: String) -> Int? in
            switch string {
            case "one":
                return 1
            case "3hree":
                return 3
            default:
                return Int(string)
            }
        }
        print(answer6EC)
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        func ingWords(input: [String]) -> [String] {
            var output: [String] = []
            for string in input {
                if string.hasSuffix("ing") {
                    output.append(string)
                }
            }
            return output
        }
        
        print("\nA. 7")
        let answer7 = ingWords(input: self.mixedVerbs)
        print(answer7)
        print("---------")
        
        // Q. 8a
        // Create a class C4QStudent with the following properties:
        //   
        //   let name: String
        //   let id: Int
        //   var favoriteLunch: String
        // 
        // Create an init method that sets all three properties from parameters passed in.
        class C4QStudent {
            //MARK: - Properties
            let name: String
            let id: Int
            var favoriteLunch: String
            
            //MARK: - Initializer
            init(name: String, id: Int, favoriteLunch: String) {
                self.name = name
                self.id = id
                self.favoriteLunch = favoriteLunch
            }
        }

        // Q. 8b
        //  Make an instance of C4QStudent from each line of data below (5 total), and put them in
        //  an array. dump() the array.
        // 
        //    Jermaine, 83, Millie's
        //    Kadell, 23, Vernon Blvd. Chinese
        //    Miti, 77, Subway
        //    Sabrina, 68, Vernon Blvd. Pizza
        //    Marcel, 39, Court Sq. Diner
        let jermaine: C4QStudent = C4QStudent(name: "Jermaine", id: 83, favoriteLunch: "Millie's")
        let kadell: C4QStudent = C4QStudent(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese")
        let miti: C4QStudent = C4QStudent(name: "Miti", id: 77, favoriteLunch: "Subway")
        let sabrina: C4QStudent = C4QStudent(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza")
        let marcel: C4QStudent = C4QStudent(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner")
        
        let students: [C4QStudent] = [jermaine, kadell, miti, sabrina, marcel]
        
        print("\nA. 8b")
        dump(students)
        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        let studentsByName: [C4QStudent] = students.sorted { $0.name < $1.name }

        print("\nA. 8c")
        dump(studentsByName)
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        let studentsById: [C4QStudent] = students.sorted { $0.id < $1.id }
        
        print("\nA. 8d")
        dump(studentsById)
        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        students.map { $0.favoriteLunch = "Tamashii Ramen" }
        
        print("\nA. 8e")
        dump(students)
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        print("Arrays of the type C4QStudent stem from a class. " +
            "Therefore, objects of the class are passing values by reference. " +
            "Changing one of the instances in one array will still share the same reference " +
            "to that same instance in another array, resulting in all of the arrays reflecting " +
            "an updated value."
        )
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")
         print(
            "Structs and classes differ in that structs pass by value, " +
                "whereas classes pass by reference. In layman's terms this implies " +
                "that instances of classes share a value which changes for all instances " +
                "if one is changed. Structs can be instantiated and not affect other instances " +
            "if it's value is changed (a new instance is made each time)."
         )
        print("---------")
        
    }
}


