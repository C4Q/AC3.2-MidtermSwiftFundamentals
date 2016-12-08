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
        func sumArray(array: [Int]) -> Int {
            var finalSum = 0
            
            for element in array {
                finalSum += element
            }
            return finalSum
        }
        
        
        // if you do the extra credit, keep it above the line
        print(sumArray(array: someInts))
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        func captialFinder(state: String, someCapitals: [String: String]) {
            
            for (key, value) in someCapitals{
                if key == state {
                    print(value)
                }
            }
        }
        print(captialFinder(state: "Arkansas", someCapitals: someCapitals))
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        
        func stateFinder(capital: String, someCapitals: [String: String]) {
            
            for (key, value) in someCapitals{
                if value == capital {
                    print(key)
                }
            }
        }

        print(stateFinder(capital: "Denver", someCapitals: someCapitals))
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        func letsBattle() -> String {
            let phrase = "Hi, \(Ship.friend), let's do \(Ship.battle)"
            print(phrase)
            
            return phrase
        }

        print(letsBattle())
        
        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
       safeOrDanger(instance: Ship.friend)
        
        print("\nA. 5 test 2")
        safeOrDanger(instance: Ship.battle)
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
        // replace this comment with your answer
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        
        func onlyIng(array: [String]) -> [String] {
            var newArray: [String] = []
            for i in array {
                if i.contains("ing") {
                    newArray.append(i)
                }
            }
            return newArray
        }
        
        print("\nA. 7")
        // replace this comment with your answer
        print(onlyIng(array: mixedVerbs))
        
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
        var arrayOfTuple = [("Jermaine",83, "Millie's"), ("Kadell", 23, "Vernon Blvd. Chinese"), ("Miti", 77, "Subway"), ("Sabrina", 66, "Vernon Blvd. Pizza"), ("Marcel", 39, "Court Sq. Diner")
        ]

        
        func makeStudent(tuple: [(name: String, id: Int, food: String)]) -> [C4QStudent] {
            var c4qStudentArray: [C4QStudent] = []
            
            for i in tuple {
                let newStudent = C4QStudent(name: i.name, id: i.id, favoriteLunch: i.food)
                c4qStudentArray.append(newStudent)
                dump(newStudent)
            }
            
            return c4qStudentArray
        }
        
        //makeStudent(tuple: arrayOfTuple)

        
        
        print("\nA. 8b")
        // replace this comment with your answer
        dump(makeStudent(tuple: arrayOfTuple))
        
        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        // replace this comment with your answer
        print("I need my time. I can do this but I just don't have the time. Could either use the higher order function sort. Or I could irerate through the Arraytuple looking at the .name and then compare the first character of each to see which one is higher since abc values have numerumic values associated with them. THen make a new array with the names sorted in order")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        // replace this comment with your answer
        print("---------")
        
        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        // replace this comment with your answer
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        
        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("That happens because class are use reference counting. So if I checked out a book(let's assume there is only one copy in the whole world avaialbe) at the library and wrote all over it then returned it, the next time I go looking for the book(by reference number) my writing would still be there ")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("\nA. 10")
        
        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("If we used a struct then we would not have inheritnce which enables one class to inheerit from another. Alos Structs are always copied when passed around in our code where class uses referencing")
        
    }
    
    // Answer 1
    func sumArray(array: [Int]) -> Int {
        var finalSum = 0
        for element in array {
            finalSum += element
        }
        return finalSum
    }
    // Answer 2
    
    func captialFinder(state: String, someCapitals: [String: String]){
        
        for (key, value) in someCapitals{
            if key == state {
                print(value)
            }
        }
    }
    
    // Answer 3 
    func stateFinder(capital: String, someCapitals: [String: String]) {
        
        for (key, value) in someCapitals{
            if value == capital {
                print(key)
            }
        }
    }

    // Answer 4 
    
    
    func letsBattle() -> String {
        let phrase = "Hi, \(Ship.friend), let's do \(Ship.battle)"
        print(phrase)
        
        return phrase
    }

    
    
    // Answer 5
    func safeOrDanger(instance: Ship){
        if instance == Ship(rawValue: "friend") {
            print("SAFE")
        }
        if instance == Ship(rawValue: "battle") {
            print("DANGER")
        }
    }

    
}

// Answer 6


// Answer 7 

func onlyIng(array: [String]) -> [String] {
    var newArray: [String] = []
    for i in array {
        if i.contains("ing") {
            newArray.append(i)
        }
    }
    return newArray
}


// Answer 8a 

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

// Answer 8b
//var arrayOfTuple = [("Jermaine",83, "Millie's"), ("Kadell", 23, "Vernon Blvd. Chinese"), ("Miti", 77, "Subway"), ("Sabrina", 66, "Vernon Blvd. Pizza"), ("Marcel", 39, "Court Sq. Diner")
//]

func makeStudent(tuple: [(name: String, id: Int, food: String)]) -> [C4QStudent] {
    var c4qStudentArray: [C4QStudent] = []
    
    for i in tuple {
        let newStudent = C4QStudent(name: i.name, id: i.id, favoriteLunch: i.food)
        c4qStudentArray.append(newStudent)
        dump(newStudent)
    }
    
    return c4qStudentArray
}


//makeStudent(tuple: arrayOfTuple)

// Answer 8c


