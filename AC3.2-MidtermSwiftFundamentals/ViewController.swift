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
        
        print("\nA. 2")
        func sumArrayOf(ints: [Int]) -> Int {
            var sum: Int = 0
            
            for int in ints {
                sum += int
            }
            return sum
        }
        
        let A1 = sumArrayOf(ints: someInts)
        
        print(A1)
        
        // if you do the extra credit, keep it above the line
        
        let A1EC = someInts.reduce(0, {x, y in x + y})
        
        print("Extra credit: \(A1EC)")
        
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        
        func findCapital(of: String, in dict: [String:String]) -> String {
            if let capital = dict[of] {
                return capital
            } else {
                return "That one isn't listed."
            }
        }
        
        let A2 = findCapital(of: "Arkansas", in: someCapitals)
        
        print(A2)
        
        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        
        func dudeWheresMyCar(city: String, dict: [String:String]) -> String {
            var reverseLookUp = [String:String]()
            
            for (state, capital) in dict {
                reverseLookUp[capital] = state
            }
            
            return reverseLookUp[city]!
        }
        
        let A3 = dudeWheresMyCar(city: "Denver", dict: someCapitals)
        
        print(A3)
        
        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        
        func gokuWantsToSpar() -> String {
            return "Hey \(Ship.friend.rawValue), let's do \(Ship.battle.rawValue)"
        }
        
        let A4 = gokuWantsToSpar()
        
        print(A4)
        
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        func checkFriendlinessOf(ship: Ship) -> String {
            switch ship {
            case .battle:
                return "DANGER"
            case .friend:
                return "SAFE"
            }
        }
        
        print("\nA. 5 test 1")
        
        let A5_Test1 = checkFriendlinessOf(ship: Ship.battle)
        
        print(A5_Test1)
        
        print("\nA. 5 test 2")
        
        let A5_Test2 = checkFriendlinessOf(ship: Ship.friend)
        
        print(A5_Test2)
        
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
        
        let fakeMap = { (a: String) -> Int? in Int(a) }
        
        func convertStringToNum(_ string: String) -> Int? {
            if let unwrappedString = Int(string) {
                return unwrappedString
            } else { // i realize that UIKit or something has a built-in function that can convert number-words to ints, but i can't recall it
                switch string {
                    case "one": return 1
                    case "3hree": return 3 // look, sometimes people make typos
                default: return nil
                }
            }
        }
        
        func letsCheckIfTheseAreNumbers(_ arr: [String], closure: (String) -> Int?) -> [Int] {
            var numbers = [Int]()
            
            for possibleNumber in arr {
                if let number = closure(possibleNumber) {
                    numbers.append(number)
                }
            }
            return numbers
        }
        
        let A6 = letsCheckIfTheseAreNumbers(numb3rs, closure: fakeMap)
        
        print(A6)
        
        // if you do the extra credit, keep it above the line
        
        let A6EC = letsCheckIfTheseAreNumbers(numb3rs, closure: { convertStringToNum($0) })
        print("Extra credit: \(A6EC)")
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        
        func findGerundsIn(_ arr: [String]) -> [String] {
            var gerunds = [String]()
            let ending: [Character] = ["i", "n", "g"]
            
            for possibleGerund in arr {
                let arrOfPossibleGerund = Array(possibleGerund.characters)
                var foundGerund: String?
                for index in 1...3 {
                    guard arrOfPossibleGerund[arrOfPossibleGerund.count - index] == ending[ending.count - index] else { break }
                    foundGerund = possibleGerund
                }
                if let thereIsSomethingInside = foundGerund {
                    gerunds.append(thereIsSomethingInside)
                }
            }
            
            return gerunds
        }
        
        let A7 = findGerundsIn(mixedVerbs)
        
        print(A7)
        
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
        
        print("\nA. 8A")
        
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
        
        
        
        let listOfPeople = [
                ["Jermaine", 83, "Millie's"],
                ["Kadell", 23, "Vernon Blvd. Chinese"],
                ["Miti", 77, "Subway"],
                ["Sabrina", 68, "Vernon Blvd. Pizza"],
                ["Marcel", 39, "Court Sq. Diner"]
            ]
        
        var students: [C4QStudent] = []
        
        for person in listOfPeople {
            if let name = person[0] as? String,
                let id = person[1] as? Int,
                let favoriteLunch = person[2] as? String {
                   let newStudent = C4QStudent(name:name, id: id, favoriteLunch: favoriteLunch)
                    students.append(newStudent)
            }
        }
        
        print("\nA. 8b")

        dump(students)
        
        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        
        
        let sortedByName = students.sorted{ $0.name < $1.name } // sorted in ascending order
        
        print("\nA. 8c")
        
        dump(sortedByName)
        
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        
        let sortedByID = students.sorted{ $0.id < $1.id } // sorted in ascending order
        
        print("\nA. 8d")
        
        dump(sortedByID)

        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        
        for student in students {
            student.favoriteLunch = "Tamashii Ramen"
        }
        
        print("\nA. 8e")
        
        dump(students)
        
        //
        // E.C. Solve using a higher order function.
        
        let A8EEC = students.map{ $0.favoriteLunch = "Tamashii Ramen" }
        
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("\nA. 9")
        
        let A9 = "Because we have Student set up as a class, and classes are reference values. When you create a copy of an object that is a reference value, you are actually creating a pointer to the same spot in memory as the original instance of that object. So if you change something in any instance of the object, you are working on the spot in memory that is being referenced by every instance of that object, and this will alter the original & any copies."
        
        print(A9)
        
        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        print("\nA. 10")
        
        let A10 = "If Student were a struct, creating a copy would create an entirely new spot in memory to contain the information inside the object, distinct from the original. Changing things in the copy would have no effect on the original, or any subsequent copies. Every instance of a struct is distinct and has no knowledge of any other instances."
        
        print(A10)

        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("---------")
        
    }
}


