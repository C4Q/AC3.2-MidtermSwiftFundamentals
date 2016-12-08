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
        let theSum = sumOfAnArray1(arr: someInts)
        print(theSum)
        
        //EC
        
        //let sumOfArray = someInts.reduce({a: Int, nextPartialResult: (a, b: Int) return a + b})
        
        print(sumOfArray)
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        let capitalOfArkansas = getCapital(dict: someCapitals, key: "Arkansas")
        print(capitalOfArkansas)
        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        let theState = getState(dict: someCapitals, value: "Denver")
        print(theState)
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        let theString = returnBattle()
        print(theString)
        print("---------")
        
        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        let safeShip = Ship.friend
        print(safeOrDanger(ship: safeShip))
        print("\nA. 5 test 2")
        let dangerShip = Ship.battle
        print(safeOrDanger(ship: dangerShip))
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
        let firstIntArray = decipher(arr: numb3rs, closure: {(a) in
            return Int(a)
        })
        print(firstIntArray)
        
        let secondIntArray = decipher(arr: numb3rs, closure: {(a) in
            let c = Array(a.characters)
            var numToReturn = Int()
            
            if let b = Int(a) {
                numToReturn = b
            }
            
            for aChar in c {
                if let num = Int(String(aChar)) {
                    numToReturn = num
                }
            }
            return numToReturn
        })
        
        print(secondIntArray)
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        let ingArray = ingWords(arr: mixedVerbs)
        print(ingArray)
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
        
        var studentsArray = [C4QStudent]()
        
        let jermaine = C4QStudent.init(name: "Jermaine", id: 83, favoriteLunch: "Millie's")
        studentsArray.append(jermaine)
        let kadell = C4QStudent.init(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese")
        studentsArray.append(kadell)
        let miti = C4QStudent.init(name: "Miti", id: 77, favoriteLunch: "Subway")
        studentsArray.append(miti)
        let sabrina = C4QStudent.init(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza")
        studentsArray.append(sabrina)
        let marcel = C4QStudent.init(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner")
        studentsArray.append(marcel)
        
        dump(studentsArray)
        
        print("---------")
        
        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        let sortedByName = studentsArray.sorted { (a: C4QStudent, b: C4QStudent) -> Bool in
            a.name < b.name
        }
        dump(sortedByName)
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        let sortedById = studentsArray.sorted{ (a: C4QStudent, b: C4QStudent) -> Bool in
            a.id < b.id
        }
        dump(sortedById)
        print("---------")
        
        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        
        for student in studentsArray {
            student.favoriteLunch = "Tamashii Ramen"
        }
        dump(studentsArray)

        
        //E.C.
        
        let changedArray = studentsArray.map { (a:C4QStudent) -> C4QStudent in
            a.favoriteLunch = "Tamashii Ramen"
            return a
        }
        
        dump(changedArray)

        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        print(
            "Because classes are reference types." +
                "When you copy(use) an object, you are taking the reference to that object." +
            "So changing the value of one object affects all the objects that reference to updated object.")
        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")
        print(
            "If we change an element of one array, it wouldn't update the other arrays." +
            "Becase structs are value types. They copy only the value from the object."
        )
        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("---------")
        
    }
    
    
    // Q. 1
    // Write a function that sums an input array of Int and returns an Int.
    // Use the property someInts as input.
    
    func sumOfAnArray1(arr: [Int]) -> Int {
        var sum = Int()
        
        for anInt in arr {
            sum += anInt
        }
        return sum
    }
    
    // E.C. Solve using a higher order function.
    //    func sumOfAnArray2(arr: [Int]) -> Int {
    //        var sum = Int()
    //
    ////        for anInt in arr {
    ////            sum += anInt
    ////        }
    //
    //        arr.map { (a: Int,b: Int) -> Int in
    //            return a+b
    //        }
    //        return sum
    //    }
    
    // Q. 2
    // You're back in 3rd grade. What's the capital of Arkansas?
    // Print the answer using the someCapitals dictionary.
    
    func getCapital(dict: [String:String], key: String) -> String {
        
        var capitalToReturn = String()
        
        for state in dict {
            if state.key == key {
                capitalToReturn = state.value
            }
        }
        
        return capitalToReturn
    }
    
    // Q. 3
    // You're in Denver for legal recreational reasons and have subsequently
    // forgotten what state you're in. Use the someCapitals dictionary
    // to find out and print the state.
    
    func getState(dict: [String:String], value: String) -> String {
        
        var stateToReturn = String()
        
        for state in dict {
            if state.value == value {
                stateToReturn = state.key
            }
        }
        
        return stateToReturn
    }
    
    // Q. 4
    // Write a function that takes no arguments and returns
    // the String, "Hi, friend, let's do battle" using the
    // Ship enum.
    
    enum Ship: String {
        case friend
        case battle
    }
    
    func returnBattle() -> String {
        
        return "Hi, \(Ship.friend), let's do \(Ship.battle)"
        
    }
    
    // Q. 5
    // Write a function that takes an instance of Ship as its parameter
    // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
    // Test and print both cases
    
    func safeOrDanger(ship: Ship) -> String {
        
        if ship == .friend {
            return "SAFE"
        }
        else {
            return "DANGER"
        }
        
    }
    
    
    // Q. 6
    // The year is 2018. You've been called on to decipher a list of inputs that
    // are suspected to represent numbers. Apple, in an effort to do its part in
    // keeping jobs in America has removed the map function from the library.
    // Write a simple clone of the map function. It should take as its two
    // parameters an array of String and a closure of type (String)->Int?
    // Call your function with a suitable closure to interpret the elements
    // from property numb3rs. You should have two results.
    
    func decipher(arr: [String], closure: (String)->Int?) -> [Int] {
        var  intArray = [Int]()
        
        for str in arr {
            if let returnValue = closure(str) {
                intArray.append(returnValue)
            }
        }
        
        return intArray
    }
    
    
    
    // E.C. Make a second call to your function with a new closure that
    // returns more numbers. I was able to get 4 Ints.
    
    
    // Q. 7
    // You got a job translating loan words from English into French. For some unknown reason
    // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
    // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
    // Output: ["canoeing", "hiking", "camping", "shampooing"]
    
    func ingWords(arr: [String]) -> [String] {
        
        var arrToReturn = [String]()
        
        for word in arr {
            let charArr = Array(word.characters)
            
            if charArr.count > 3 {
                if charArr[charArr.count - 3] == "i" && charArr[charArr.count - 2] == "n" && charArr[charArr.count - 1] == "g" {
                    arrToReturn.append(word)
                }
            }
        }
        return arrToReturn
    }
    
    
    // Q. 8a
    // Create a class C4QStudent with the following properties:
    //
    //   let name: String
    //   let id: Int
    //   var favoriteLunch: String
    //
    // Create an init method that sets all three properties from parameters passed in.
    
    
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
    var studentsArray = [C4QStudent]()
    
    let jermaine = C4QStudent.init(name: "Jermaine", id: 83, favoriteLunch: "Millie's")
    let kadell = C4QStudent.init(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese")
    let miti = C4QStudent.init(name: "Miti", id: 77, favoriteLunch: "Subway")
    let sabrina = C4QStudent.init(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza")
    let marcel = C4QStudent.init(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner")
}


