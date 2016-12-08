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
    
    func sumInputArray(arr: [Int]) -> Int {
        return arr.reduce(0, +)
    }
    
    func getCapital(capitalsDict: [String : String], state: String) -> String? {
        guard let arkansasCapital = capitalsDict[state] else { return nil}
        return arkansasCapital
    }
    
    func getState(capitalDict: [String : String], capital: String) -> String {
        var state = ""
        for (key, _) in capitalDict {
            if capitalDict[key] == capital{
                state = key
            }
        }
        return state
    }
    
    func printHiFriend() -> String {
        return "Hi, \(Ship.friend) let's do \(Ship.battle)"
    }
    
    func safeOrDanger(shipEnum: Ship) -> String {
        switch shipEnum {
        case .battle:
            return "DANGER"
        case .friend:
            return "SAFE"
        }
    }
    
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
    
    func simpleMapFunctionClone(arr: [String], closure: (String) -> Int?) {
    }
    
    func filteringForIngEndings(arr: [String]) -> [String] {
        let newArr = arr.filter{$0.contains("ing")}
        return newArr
    }
    
    
    func makeInstancesOfC4QStudent(tupple: (name: String, id: Int, lunch: String)) -> C4QStudent {
        return C4QStudent(name: tupple.name, id: tupple.id, favoriteLunch: tupple.lunch)
    }
    
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
        
        let answerToOne = sumInputArray(arr: someInts)
        print(answerToOne)
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        
        guard let capitalOfArkansas = self.getCapital(capitalsDict: someCapitals, state: "Arkansas") else { return }
        print(capitalOfArkansas)
        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        
        let state = getState(capitalDict: someCapitals, capital: "Denver")
        print(state)
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        
        let printMessage = printHiFriend()
        print(printMessage)
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        
        let safe = safeOrDanger(shipEnum: .friend)
        print(safe)
        print("\nA. 5 test 2")

        let danger = safeOrDanger(shipEnum: .battle)
        print(danger)
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
        let numbers = self.simpleMapFunctionClone(arr: numb3rs) { (number) in
            var counter = 0
            if Int(number) != nil {
                counter += 1
            }
            return counter
        }
        print(numbers)
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        let ingWords = filteringForIngEndings(arr: mixedVerbs)
        print(ingWords)
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
        var arrOfStudents = [C4QStudent]()
        arrOfStudents.append(makeInstancesOfC4QStudent(tupple: ("Jermaine", 83, "Millie's")))
        arrOfStudents.append(makeInstancesOfC4QStudent(tupple: ("Kadell", 23, "Vernon Blvd. Chinese")))
        arrOfStudents.append(makeInstancesOfC4QStudent(tupple: ("Miti", 77, "Subway")))
        arrOfStudents.append(makeInstancesOfC4QStudent(tupple: ("Sabrina", 68, "Vernon Blvd. Pizza")))
        arrOfStudents.append(makeInstancesOfC4QStudent(tupple: ( "Marcel", 39, "Court Sq. Diner")))
        dump(arrOfStudents)
        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        let sortedByName = arrOfStudents.sorted{ $0.name < $1.name }
        dump(sortedByName)
        
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        let sortedByID = arrOfStudents.sorted{ $0.id < $1.id}
        dump(sortedByID)
        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        for student in arrOfStudents {
            student.favoriteLunch = "Tamashii Ramen"
        }
        dump(arrOfStudents)
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        print("\nA. 9")
        
        print("Classes have inheratance and are reference types and Structs are not.")

        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")

        print("We wouldn't be able to change the students favorite lunch, we would have to make another instance of the array and make the change to that array and dump that array. The original array would stay the same.")
        print("---------")
        
    }
  
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

