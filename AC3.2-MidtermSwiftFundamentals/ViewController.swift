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
    
    var students = [C4QStudent]()
    
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
        // if you do the extra credit, keep it above the line
        print(a1SumOfElementsIn(array: someInts))
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        print(findCapitalCityIn(state: "Arkansas", dict: someCapitals))
        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        print(findStateFrom(city: "Denver", in: someCapitals))
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        let greeting = shipGreeting()
        print(greeting)
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        let friend = Ship.friend
        print(friendOrFoe(friend))
        
        print("\nA. 5 test 2")
        let battle = Ship.battle
        print(friendOrFoe(battle))
        print("---------")

        // Q. 6
        // The year is 2018. You've been called on to decipher a list of inputs that 
        // are suspected to represent numbers. Apple, in an effort to do its part in
        // keeping jobs in America has removed the filter function from the library.
        // Write a simple clone of the filter function. It should take as its two
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
        print(keepIngs(mixedVerbs))
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
        let jermaine = C4QStudent(name: "Jermaine", id: 83, favoriteLunch: "Millie's")
        students.append(jermaine)
        //    Kadell, 23, Vernon Blvd. Chinese
        let kadell = C4QStudent(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese")
        students.append(kadell)
        //    Miti, 77, Subway
        let miti = C4QStudent(name: "Miti", id: 77, favoriteLunch: "Subway")
        students.append(miti)
        //    Sabrina, 68, Vernon Blvd. Pizza
        let sabrina = C4QStudent(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza")
        students.append(sabrina)
        //    Marcel, 39, Court Sq. Diner
        let marcel = C4QStudent(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner")
        students.append(marcel)
    
        print("\nA. 8b")
        dump(students)
        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        let studentsSortedByName = students.sorted { (student1: C4QStudent, student2: C4QStudent) -> Bool in
            return student1.name < student2.name
        }
        dump(studentsSortedByName)
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        students.sort { (student1: C4QStudent, student2: C4QStudent) -> Bool in
            return student1.id < student2.id
        }
        dump(students)
        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
//        students.map { (student: C4QStudent) -> C4QStudent in
//            student.favoriteLunch = "Tamashii Ramen"
//        }
        for student in students {
            student.favoriteLunch = "Tamashii Ramen"
        }
        dump(students)
        
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
//        students.map { (student: C4QStudent) -> T in
//            <#code#>
//        }
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        print("\nA. 9")
        print("This occurs because the arrays are properties of classes, which means that they are reference types. " +
        "With reference types, a change made to an instance will be reflected in any other instances because " +
        "all instances of point to the same pointer in memory")
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        print("\nA. 10")
        print("If C4QStudent were a struct, it would ba value type, and a change made to one would have no affect on other " +
        "instances because each instance has their own unique pointer in memory.")
        print("---------")
        
    }
    
    // MARK: - FUNCTION DECLARATIONS
    
    // Q. 1
    // Write a function that sums an input array of Int and returns an Int.
    // Use the property someInts as input.
    //
    // E.C. Solve using a higher order function.
    func a1SumOfElementsIn(array: [Int]) -> Int {
        var sum = 0
        for elem in array {
            sum += elem
        }
        return sum
    }
    
    // Q. 2
    // You're back in 3rd grade. What's the capital of Arkansas?
    // Print the answer using the someCapitals dictionary.
    func findCapitalCityIn(state: String, dict: [String:String]) -> String {
        guard let capital = dict[state] else { return "" }
        return capital
    }
    
    //Q. 3
    // You're in Denver for legal recreational reasons and have subsequently
    // forgotten what state you're in. Use the someCapitals dictionary
    // to find out and print the state.
    func findStateFrom(city: String, in dict: [String: String]) -> String {
        var state = ""
        for (key, value) in dict {
            if value == city {
                state = key
            }
        }
        return state
    }
    
    //Q. 4
    // Write a function that takes no arguments and returns
    // the String, "Hi, friend, let's do battle" using the
    // Ship enum.
    func shipGreeting() -> String {
        let friend = Ship.friend.rawValue
        let battle = Ship.battle.rawValue
        let greeting = "Hi, \(friend), let's do \(battle)"
        return greeting
    }
    
    // Q. 5
    // Write a function that takes an instance of Ship as its parameter
    // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
    // Test and print both cases
    
    func friendOrFoe(_ shipInstance: Ship) -> String {
        switch shipInstance {
        case .friend:
            return "SAFE"
        case .battle:
            return "DANGER"
        }
    }
    
    // Q. 6
    // The year is 2018. You've been called on to decipher a list of inputs that
    // are suspected to represent numbers. Apple, in an effort to do its part in
    // keeping jobs in America has removed the filter function from the library.
    // Write a simple clone of the filter function. It should take as its two
    // parameters an array of String and a closure of type (String)->Int?
    // Call your function with a suitable closure to interpret the elements
    // from property numb3rs. You should have two results.
    //
    // E.C. Make a second call to your function with a new closure that
    // returns more numbers. I was able to get 4 Ints.
    let filterClosure = {
        
    }
    
//    func filterNumsIn(arr: [String], closure: (String) -> Int?) {
//        let convert: (String) -> Int?
//        for elem in arr {
//            convert = { elem in
//                if let num = Int(elem) {
//                    return num
//                }
//            }
////            closure(elem) {
////                
////            }
//        }
//      return
//    }

    
    // Q. 7
    // You got a job translating loan words from English into French. For some unknown reason
    // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
    // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
    // Output: ["canoeing", "hiking", "camping", "shampooing"]
    func keepIngs(_ arr: [String]) -> [String] {
        var returnArr = [String]()
        
        for elem in arr {
            if elem.contains("ing"){
                returnArr.append(elem)
            }
        }
        
        return returnArr
    }
    
    
    
}


