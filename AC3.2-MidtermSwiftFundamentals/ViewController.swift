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
        print(sum(arr: someInts))
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        print(ark())
        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        print(den(arr: someCapitals))
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        print(bat())
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        print(swi(test: Ship.friend))
        
        print("\nA. 5 test 2")
        print(swi(test: Ship.battle))
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
        print(num(arr: numb3rs, clo: swa))
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        print(ing(arr: mixedVerbs))
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
        
        var array = [C4QStudent]()
        array.append(C4QStudent(name: "Jermaine", id: 83, favoriteLunch: "Millie's"))
        array.append(C4QStudent(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese"))
        array.append(C4QStudent(name: "Miti", id: 77, favoriteLunch: "Subway"))
        array.append(C4QStudent(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza"))
        array.append(C4QStudent(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner"))

        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        let sor = array.sorted { $0.name < $1.name }
        dump(sor)
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        let ids = array.sorted { $0.id < $1.id }
        dump(ids)
        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        array.map { $0.favoriteLunch = "Tamashii Ramen" }
        dump(array)
        dump(sor)
        dump(ids)
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        
         print(
             "To kill a vampire, you must kill the source - the original one" +
             "So if you change the original array, sorting the information will be from the updated array" +
             "If you want to keep the original information the same, change it in a new variable or constant"
         )
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")

         print(
             "Structs come with a free init " +
             "Classes are passed by REFERENCE meaning from memory" +
             "Struct are passed by value meaning new copies are created with the same value" +
             "The reference points back to the same source every time"
         )
        print("---------")
        
    }
    func sum(arr:[Int]) -> Int {
        return arr.reduce(0, +)
    }
    func ark() -> String {
        guard let cap = self.someCapitals["Arkansas"] else { return "Not found" }
        return cap
    }
    func den(arr:[String:String]) -> String {
        for i in arr {
            if i.value == "Denver" {
                return i.key
            }
        }
        return "Not found"
    }
    func bat() -> String {
        return "Hi, \(Ship.friend), let's do \(Ship.battle)"
    }
    
    func swi(test: Ship) -> String {
        switch test {
            case .friend:
            return "SAFE"
            case .battle:
            return "DANGER"
        }
    }
    
    let swa = { (a) -> Int? in
        Int(a)
    }
    func num(arr: [String], clo: (String) -> Int?) -> [Int] {
        var ret = [Int]()
        for i in arr {
            if let j = clo(i) {
                ret.append(j)
            }
        }
        return ret
    }
    
    func ing(arr: [String]) -> [String] {
        var ret = [String]()
        for i in arr {
            guard i.characters.count > 3 else { continue }
            let range = i.index(i.startIndex, offsetBy: i.characters.count - 3)..<i.index(i.startIndex, offsetBy: i.characters.count)
            guard i[range] == "ing" else { continue }
            ret.append(i)
        }
        return ret
    }
}


