//
//  ViewController.swift
//  AC3.2-MidtermSwiftFundamentals
//
//  Created by Jason Gresh on 12/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

enum Ship: String {
    case battle = "let's do battle"
    case friend = "Hi, friend,"
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
        print(findSum(arr: someInts))
        
        print("Extra Credit")
        let addAllInts: (Int, Int) -> Int = { x, y in x + y}
        let newSum = someInts.reduce(0, addAllInts)
        print(newSum)
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
        for (index, value) in someCapitals {
            print("\(value) is in \(index)")
        }
        //Checking:
        print(someCapitals["Colorado"]!)
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        print(returnStringUsingEnum())
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        print(returnFriend(shipTwo: Ship.friend))
        
        print("\nA. 5 test 2")
        print(returnBattle(shipTwo: Ship.battle))
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
        //Given an array of String and a closure of type String -> [Int]?, write a function that returns the array of ints you get when you apply the closure to each element of the input array. The output array should not have any nil elements.
        //
        // E.C. Make a second call to your function with a new closure that 
        // returns more numbers. I was able to get 4 Ints.
        /// Will return number of elements that are suceed, more of a filter
        
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
        print(filterIngs(arr: mixedVerbs))
        print("---------")
        
        // Q. 8a
        // Create a class C4QStudent with the following properties:
        //   
        //   let name: String
        //   let id: Int
        //   var favoriteLunch: String
        // 
        // Create an init method that sets all three properties from parameters passed in.
        print("\nA. 8a")
        print("Answer is presented in ViewDidLoad")
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
        print("---------")
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
        let jermaine = C4QStudent(name: "Jermaine", id: 83, favoriteLunch: "Millie's")
        let kadell = C4QStudent(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese")
        let miti = C4QStudent(name: "Miti", id: 77, favoriteLunch: "Subway")
        let sabrina = C4QStudent(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza")
        let marcel = C4QStudent(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner")
        let array = [jermaine, kadell, miti, sabrina, marcel]
        dump(array)
        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        let nameArray = [jermaine.name, kadell.name, miti.name, sabrina.name, marcel.name]
        let sortingByName = nameArray.sorted()
        dump(sortingByName)
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        let idArray = [jermaine.id, kadell.id, miti.id, sabrina.id, marcel.id]
        let sortingByID = idArray.sorted()
        dump(sortingByID)
        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        print("\nA. 8e")
        jermaine.favoriteLunch = "Tamashii Ramen"
        kadell.favoriteLunch = "Tamashii Ramen"
        miti.favoriteLunch = "Tamashii Ramen"
        sabrina.favoriteLunch = "Tamashii Ramen"
        marcel.favoriteLunch = "Tamashii Ramen"
        let newArray = [jermaine, kadell, miti, sabrina, marcel]
        dump(newArray)
        // E.C. Solve using a higher order function.
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        print("\nA. 9")
         print(
             "Classes are passed by reference and are inherited"
         )
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")
         print(
             "Struct is passed by value compared to where classes are passed by reference " +
             "If C4QStudent was a struct, it would provide us with a memberwise initializer."
         )
        print("---------")
        
    }
    // Q. 1
    var sum = 0
    func findSum (arr: [Int]) -> Int {
        for num in arr {
            sum += num
        }
        return sum
    }
    // Q. 4
    func returnStringUsingEnum() -> String {
        return "\(Ship.friend.rawValue) \(Ship.battle.rawValue)"
    }
    // Q. 5 test 1
    func returnFriend(shipTwo: Ship) -> String {
        switch shipTwo {
        case .friend:
            print("SAFE")
        case .battle:
            print("DANGER")
        }
        return ""
    }
    // Q. 5 test 2
    func returnBattle(shipTwo: Ship) -> String {
        switch shipTwo {
        case .friend:
            print("SAFE")
        case .battle:
            print("DANGER")
        }
        return ""
    }
    // Q. 6
    func decipherInput (arr: [String], closure: @escaping (String) -> [Int]?) -> [Int] {
        var returnInt = 0
        //numb3rs.filter{_ in closure}
        return [returnInt]
    }
    // Q. 7
    func filterIngs(arr: [String]) -> [String] {
        return mixedVerbs.filter({$0.contains("ing")})
    }
    
    
    
}


