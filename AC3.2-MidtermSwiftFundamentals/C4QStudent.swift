//
//  C4QStudent.swift
//  AC3.2-MidtermSwiftFundamentals
//
//  Created by C4Q on 12/8/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

class C4QStudent {
    let name: String
    let id: Int
    var favouriteLunch: String
    
    init (name: String, id: Int, favouriteLunch: String) {
        self.name = name
        self.id = id
        self.favouriteLunch = favouriteLunch
    }
    
    class func q8 () -> [C4QStudent] {
        /*
         Jermaine, 83, Millie's
         Kadell, 23, Vernon Blvd. Chinese
         Miti, 77, Subway
         Sabrina, 68, Vernon Blvd. Pizza
         Marcel, 39, Court Sq. Diner
         */
        var studentArr: [C4QStudent] = []
        let studentInfo = [["name": "Jermaine", "id" : 83, "favouriteLunch" : "Millie's"],
                           ["name": "Kadell", "id" : 23, "favouriteLunch" : "Vernon Blvd. Chinese"],
                           ["name": "Miti", "id" : 77, "favouriteLunch" : "Subway"],
                           ["name": "Sabrina", "id" : 68, "favouriteLunch" : "Vernon Blvd. Pizza"],
                           ["name": "Marcel", "id" : 39, "favouriteLunch" : "Court Sq. Diner"]]
        for dict in studentInfo {
            guard let name = dict["name"] as? String,
                let id = dict["id"] as? Int,
                let favouriteLunch = dict["favouriteLunch"] as? String else {
                    continue
            }
            studentArr.append(C4QStudent.init(name: name, id: id, favouriteLunch: favouriteLunch))
        }
        return studentArr
    }
}
