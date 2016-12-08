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
        print(q1SumOfAllInt(intArr: someInts))
        print("Extra Credit")
        print(q1SumOFAllIntReduce(intArr: someInts))
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        guard let validCapital = q2FindCapital(state: "Arkansas", dict: someCapitals ) else { return }
        print(validCapital)
        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        guard let validState = q3FindState(capital: "Denver", dict: someCapitals) else { return }
        print(validState)
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        print(q4PrintStringWithShipEnum())
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        let shipFriend = Ship.friend
        print(q5CheckShipIfSafeOrInDanger(ship: shipFriend))
        
        print("\nA. 5 test 2")
        let shipBattle = Ship.battle
        print(q5CheckShipIfSafeOrInDanger(ship: shipBattle))
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
        let closure: (String) -> Int? = {string in Int(string)}
        print(q6CheckStringIfRepresentNumbers(stringArr: numb3rs, closure: closure))
        print("Extra Credit")
        print(q6CheckStringIfRepresentNumbersEC(stringArr: numb3rs, closure: closure))
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        print(q7FilterOutWithEndingING(stringArr: mixedVerbs))
        print("Extra Credit")
        print(mixedVerbs.filter { (verb) -> Bool in
            verb.hasSuffix("ing")
        })
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
        let jermaine: C4QStudent = C4QStudent(name: "Jermaine", id: 83, favoriteLunch: "Millie's")
        let kadell: C4QStudent = C4QStudent(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese")
        let miti: C4QStudent = C4QStudent(name: "Miti", id: 77, favoriteLunch: "Subway")
        let sabrina: C4QStudent = C4QStudent(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza")
        let marcel: C4QStudent = C4QStudent(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner")
        let c4qStudentArr: [C4QStudent] = [jermaine, kadell, miti, sabrina, marcel]
        dump(c4qStudentArr)
        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        let c4qStudentArrSortedByName = c4qStudentArr.sorted{$0.0.name < $0.1.name}
        dump(c4qStudentArrSortedByName)
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        let c4qStudentSortedById = c4qStudentArr.sorted{$0.0.id < $0.1.id}
        dump(c4qStudentSortedById)
        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        q8eChangeFavoriteLunchSpot(placeName: "Tamashii Ramen", c4qStudentArr: c4qStudentArr)
        print("Extra Credit")
        _ = c4qStudentArr.map({ (student) -> Bool in
            student.favoriteLunch = "Tamashii Ramen"
            return true
        })
        dump(c4qStudentArr)
        
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        print("When update the elements of one array, all arrays show the updated value because classes are reference type. If the original of the reference changed, the things that are referencing the reference will also change.")
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")
        print("Unlike classes, structs are value type. When update the elements of the array, only the one modified will change, the others won't change.")
        print("---------")
        
    }
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
    func q1SumOfAllInt(intArr: [Int]) -> Int {
        var sum = 0
        for i in intArr {
            sum += i
        }
        return sum
    }
    
    func q1SumOFAllIntReduce(intArr: [Int]) -> Int {
        let closure: (Int, Int) -> Int = {x,y in x + y}
        return intArr.reduce(0, closure)
    }
    
    // Q. 2
    // You're back in 3rd grade. What's the capital of Arkansas?
    // Print the answer using the someCapitals dictionary.
    //print("\nA. 2")
    func q2FindCapital(state: String ,dict: [String: String]) -> String? {
        for (key,value) in dict {
            if key == state {
                return value
            }
        }
        return nil
    }
    
    // Q. 3
    // You're in Denver for legal recreational reasons and have subsequently
    // forgotten what state you're in. Use the someCapitals dictionary
    // to find out and print the state.
    func q3FindState(capital: String, dict: [String: String]) -> String? {
        for (key, value) in dict {
            if value == capital {
                return key
            }
        }
        return nil
    }
    
    // Q. 4
    // Write a function that takes no arguments and returns
    // the String, "Hi, friend, let's do battle" using the
    // Ship enum.
    func q4PrintStringWithShipEnum() -> String {
        return "Hi, \(Ship.friend), let's do \(Ship.battle)"
    }
    
    // Q. 5
    // Write a function that takes an instance of Ship as its parameter
    // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
    // Test and print both cases
    func q5CheckShipIfSafeOrInDanger(ship: Ship) -> String {
        switch ship {
        case .friend:
            return "SAFE"
        case .battle:
            return "DANGER"
        }
    }
    
    // Q. 6 //work like a filter instead
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
    
    func q6CheckStringIfRepresentNumbers(stringArr: [String], closure: (String) -> Int?)  -> [Int] {
        var intArr: [Int] = []
        for s in stringArr{
            if let validInt = closure(s) {
                intArr.append(validInt)
            }
        }
        return intArr
    }
    
    func q6CheckStringIfRepresentNumbersEC(stringArr: [String], closure: (String) -> Int?)  -> [Int] {
        var intArr: [Int] = []
        for s in stringArr{
            if s == "one" {
                if let validInt = closure("1") {
                    intArr.append(validInt)
                }
            }
            if s == "3hree" {
                if let validInt = closure("3") {
                    intArr.append(validInt)
                }
            }
            if let validInt = closure(s) {
                intArr.append(validInt)
            }
        }
        return intArr
    }
    
    // Q. 7
    // You got a job translating loan words from English into French. For some unknown reason
    // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
    // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
    // Output: ["canoeing", "hiking", "camping", "shampooing"]
    //print("\nA. 7")
    func q7FilterOutWithEndingING(stringArr: [String]) -> [String] {
        var stringArrToReturn: [String] = []
        for s in stringArr {
            if s.hasSuffix("ing") {
                stringArrToReturn.append(s)
            }
        }
        return stringArrToReturn
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
    
    //print("\nA. 8b")
    // replace this comment with your answer
    //print("---------")
    
    // Q. 8c
    // Create a new array by sorting by name. dump() it.
    //print("\nA. 8c")
    // replace this comment with your answer
    //print("---------")
    
    // Q. 8d
    // Create a new array by sorting by id. dump() it.
    //print("\nA. 8d")
    // replace this comment with your answer
    //print("---------")
    
    // Q. 8e
    // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
    //
    // E.C. Solve using a higher order function.
    //print("\nA. 8e")
    // replace this comment with your answer
    // if you do the extra credit, keep it above the line
    func q8eChangeFavoriteLunchSpot(placeName: String, c4qStudentArr: [C4QStudent]) {
        for c in c4qStudentArr {
            c.favoriteLunch = placeName
        }
    }
}


