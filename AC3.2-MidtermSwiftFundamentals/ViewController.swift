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

// Q. 8a
// Create a class C4QStudent with the following properties:
//
//   let name: String
//   let id: Int
//   var favoriteLunch: String
//
// Create an init method that sets all three properties from parameters passed in.

//class C4QStudent {
//    let name: String
//    let id: Int
//    let favoriteLunch: String
//    
//    init(name: String, id: Int, favoriteLunch: String) {
//        self.name = name
//        self.id = id
//        self.favoriteLunch = favoriteLunch
//    }
//}

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
        
        //standard soltuion
        
        func sumOfarr(arr: [Int]) -> Int {
            var sum: Int = 0
            for element in arr {
                sum += element
            }
            return sum
        }
        
        //extra credit:
        func sumOfArrayUsingReduce(arr: [Int]) -> Int {
            let sumOfArr = arr.reduce(0) {$0 + $1}
            return sumOfArr
        }
        
        print("A. 1 \n standard solution: \(sumOfarr(arr: someInts)) \n E.C : \(sumOfArrayUsingReduce(arr: someInts))")
        // replace this comment with your answer
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2 \n The capit of Arkansas is \(someCapitals["Arkansas"]!)")
        // replace this comment with your answer
        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        let stateIndex = someCapitals.index {$0.value.hasPrefix("Denver")}
        print("\nA. 3 \n Denver is located in \(someCapitals[stateIndex!].key)")
        // replace this comment with your answer
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        
        func printBattleShipGreeting() -> String{
            let string = "Hi, \(Ship.friend.rawValue), let's do \(Ship.battle.rawValue)"
            return string
        }
        
        print("\nA. 4 \n \(printBattleShipGreeting())")
        // replace this comment with your answer
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        
        let shippy = Ship.battle
        
        
        func safeOrNah(instanceOfEnum: Ship) -> String{
            switch instanceOfEnum {
            case .battle:
                return "DANGER"
            case .friend:
                return "SAFE"
            }
        }
        
        print("\nA. 5 test 1 \n \(safeOrNah(instanceOfEnum: .battle))")
        //replace this comment with your answer
        
        print("\nA. 5 test 2 \n \(safeOrNah(instanceOfEnum: .friend))")
        // replace this comment with your answer
        print("---------")

        // Q. 6
        // The year is 2018. You've been called on to decipher a list of inputs that 
        // are suspected to represent numbers. Apple, in an effort to do its part in
        // keeping jobs in America has removed the map function from the library.
        
        // Write a simple clone of the map function. It should take as its two
        // parameters an array of String and a closure of type (String)->Int?
        // Call your function with a suitable closure to interpret the elements
        // from property numb3rs. You should have two results.
        
        func toInt(string: String) -> Int? {
            if let intVersion = Int(string) {
                return intVersion
            } else {
                return .none
            }
        }
        
        func stringsToInts(arr: [String], by: (String)-> Int?) -> [Int]{
            var arrOfInts: [Int] = []
            for element in arr {
                if let int = by(element) {
                    arrOfInts.append(int)
                }
            }
            return arrOfInts
        }
        
        //
        // E.C. Make a second call to your function with a new closure that 
        // returns more numbers. I was able to get 4 Ints.
        
        print("\nA. 6 \n \(stringsToInts(arr: numb3rs, by: toInt))")
        // replace this comment with your answer
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        
        let string = "cat"
        
        
        func returnIngWords(arr: [String]) -> [String] {
            var newArr: [String] = []
            for element in arr {
                if element.hasSuffix("ing") == true {
                    newArr.append(element)
                }
            }
            return newArr
        }
        
        print("\nA. 7 \n \(returnIngWords(arr: mixedVerbs))")
        // replace this comment with your answer
        print("---------")
        
        // Q. 8a
        // Create a class C4QStudent with the following properties:
        //   
        //   let name: String
        //   let id: Int
        //   var favoriteLunch: String
        
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
        
        let Jermaine = C4QStudent(name: "Jermaine", id: 83, favoriteLunch: "Millie's")
        let Kadell = C4QStudent(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese")
        let Miti = C4QStudent(name: "Miti", id: 77, favoriteLunch: "Subway")
        let Sabrina = C4QStudent(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza")
        let Marcel = C4QStudent(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner")
        
        let students: [C4QStudent] = [Jermaine, Kadell, Miti, Sabrina, Marcel]
        let sortedStudents = students.sorted{$0.name < $1.name}
        let studentsSortedByID = students.sorted{$0.id < $1.id}
        
        
        
        
        print("\nA. 8b  \n \(students)")
        dump(students)
        // replace this comment with your answer
        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c \n \(sortedStudents)")
        // replace this comment with your answer
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d \n \(studentsSortedByID)")
        // replace this comment with your answer
        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        
        for student in students {
            student.favoriteLunch = "Tamashii Ramen"
        }
        dump(students[0].favoriteLunch)
        
        // E.C. Solve using a higher order function.
        print("\nA. 8e \n(students[0].favoriteLunch)")
        // replace this comment with your answer
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9 The reason all of the arrays show the updated value is because C4QStudents is a class, which are reference types. All of the arrays are referring back to the same data. When you create an instance of a class, then make a copy of that instance, any changes made to the copy will be reflected in the first instance")
        
        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10 if C4QStudent were a struct, then any changes made to a copy of an instance, would not be reflected in the original instance")

        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("---------")
        
    
    }

}
