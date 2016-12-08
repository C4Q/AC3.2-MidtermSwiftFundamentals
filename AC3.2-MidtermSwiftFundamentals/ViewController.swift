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
    
    // Q. 1
    func sumOfInt(arrInt: [Int]) -> Int{
        var sum = 0
        for num in arrInt{
            sum += num
        }
        return sum
    }
    
     // Q. 2
    
    func capitalOfAlasaka(capitalDict: [String: String]) -> String{
        return capitalDict["Arkansas"]!
    }
    
    // Q. 3 //COME BACK !!
    
    func stateWhereDenverIn(capitalDict: [String: String]) -> String{
        
        var theState = ""
        for (key, value) in capitalDict.enumerated(){
            if value.value == "Denver"{
                theState.append(value.key)
            }
        }
        return theState
    }
    
    
    // Q. 4
    
    enum Ship: String{
        case word1 = "Hi "
        case word2 = "friend "
        case word3 = "let's "
        case word4 = "do "
        case word5 = "battle "
        
    }
    
    func ShipChar() -> String{
        var strToReturn = ""
        
        strToReturn.append(Ship.word1.rawValue)
        strToReturn.append(Ship.word2.rawValue)
        strToReturn.append(Ship.word3.rawValue)
        strToReturn.append(Ship.word4.rawValue)
        strToReturn.append(Ship.word5.rawValue)
        
        return strToReturn
    }
    
        // Q. 5
    
    enum ShipTwo: String{
        case case1 = "friend"
        case case2 = "battle"
    }
    
    func saftyCheck(status: ShipTwo.RawValue) -> String{
        if status == "friend"{
            return "SAFE"
        }else{
            return "DENGER"
        }
    }
    
      // Q. 6// come back
    
    
    
      // Q. 7
    
    func wordWithIng(arrStr: [String]) ->[String]{
        
        var wordsToReturn = [String]()
        
        for eachWord in arrStr{
            if eachWord.contains("ing"){
                wordsToReturn.append(eachWord)
            }
            
        }
        return wordsToReturn
    }
    
     // Q. 8a
    
    class C4QStudent{
        let name: String
        let id: Int
        var favoriteLunch: String
        
        init(name: String, id: Int, favoriteLunch: String){
            self.name = name
            self.id = id
            self.favoriteLunch = favoriteLunch
        }
    }
    // Q. 8b
    //
    //  Make an instance of C4QStudent from each line of data below (5 total), and put them in
    //  an array. dump() the array.
  
        

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(sumOfInt(arrInt: someInts))

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
        
        print(sumOfInt(arrInt: someInts))
        // 160
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print(capitalOfAlasaka(capitalDict: someCapitals))
        // Little Rock
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print(stateWhereDenverIn(capitalDict: someCapitals))
        // Colorado
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print(ShipChar())
        // Hi friend let's do battle


        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        
        print(saftyCheck(status: ShipTwo.case1.rawValue))
        // SAFE
        
        print(saftyCheck(status: ShipTwo.case2.rawValue))
        //DENGER

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
        print(wordWithIng(arrStr: mixedVerbs))
        // ["canoeing", "hiking", "camping", "shampooing"]
        
        // Q. 8a
        // Create a class C4QStudent with the following properties:
        
        // MARK: - C4QStudent class is above

        // Q. 8b
        //
        //  Make an instance of C4QStudent from each line of data below (5 total), and put them in
        //  an array. dump() the array.

            var arrOfStd = [C4QStudent]()
            
            let stdOne = C4QStudent(name: "Jermaine", id: 83, favoriteLunch: "Millie's")
            let stdTwo = C4QStudent(name: "Kadell", id: 23, favoriteLunch: "Vernon Blvd. Chinese")
            let stdThree = C4QStudent(name: "Miti", id: 77, favoriteLunch: "Subway")
            let stdFour = C4QStudent(name: "Sabrina", id: 68, favoriteLunch: "Vernon Blvd. Pizza")
            let stdFive = C4QStudent(name: "Marcel", id: 39, favoriteLunch: "Court Sq. Diner")
            
            arrOfStd.append(stdOne)
            arrOfStd.append(stdTwo)
            arrOfStd.append(stdThree)
            arrOfStd.append(stdFour)
            arrOfStd.append(stdFive)
        
            dump(arrOfStd)

        
        print(arrOfStd)
        /*
         ▿ 5 elements
         ▿ C4QStudent #0
         - name: "Jermaine"
         - id: 83
         - favoriteLunch: "Millie\'s"
         ▿ C4QStudent #1
         - name: "Kadell"
         - id: 23
         - favoriteLunch: "Vernon Blvd. Chinese"
         ▿ C4QStudent #2
         - name: "Miti"
         - id: 77
         - favoriteLunch: "Subway"
         ▿ C4QStudent #3
         - name: "Sabrina"
         - id: 68
         - favoriteLunch: "Vernon Blvd. Pizza"
         ▿ C4QStudent #4
         - name: "Marcel"
         - id: 39
         - favoriteLunch: "Court Sq. Diner"
         [C4QStudent, C4QStudent, C4QStudent, C4QStudent, C4QStudent]
         
         */

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        
        //MARK: - LACK OF TIME
        //SOMETHING LIKE THAT
       /* var sortedByName = [C4QStudent]()
        
        for s in arrOfStd{
            var sortedByName = s.name.sorted{$0 < $1}
        }*/
 
        
        print("\nA. 8c")
        // replace this comment with your answer
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        // replace this comment with your answer
        print("---------")
        
        /* var sortedByName = [C4QStudent]()
         //SOMETHING LIKE THAT
         for s in arrOfStd{
         var sortedByName = s.id.sorted{$0 < $1}
         }*/

        //JUST TO CHAGE THE KEY VALUE
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
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        
        //STRUCT IS PASS BY VALUE AND CLASS IS PASS BY VALUE
        print("\nA. 10")

        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("---------")
    }
    
    
    
    
}


