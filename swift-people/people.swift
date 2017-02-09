//
//  people.swift
//  swift-people
//
//  Created by Raquel Rahmey on 2/4/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//


import Foundation

class Person {
    
    let name: String
    var ageInYears: Int?
    var skills:[String] = []
    
    var qualifiedTutor: Bool {
        if skills.count >= 4{
            return true
        } else {
            return false
        }
    }
    
    init(name: String,ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    convenience init () {
        self.init(name: "John Doe", ageInYears: nil)
    }
    
    func celebrateBirthday() -> String {
        var birthdayMessage = ""
        if ageInYears == nil {
            birthdayMessage = "HAPPY BIRTHDAY, \(name.uppercased())!!!"
        }
        if ageInYears != nil {
            ageInYears! += 1
            birthdayMessage = "HAPPY \(ageInYears!)\(ageInYears!.ordinal().uppercased()) BIRTHDAY, \(name.uppercased())!!!"
        }
        return birthdayMessage
        
    }
    
    func learnSkillBash() {
        if skills.contains("bash") == false {
            skills.append("bash")
        }
    }
    func learnSkillXcode() {
        if skills.contains("Xcode") == false {
            skills.append("Xcode")
        }
    }
    func learnSkillObjectiveC() {
        if skills.contains("Objective-C") == false {
            skills.append("Objective-C")
        }
    }
    func learnSkillSwift() {
        if skills.contains("Swift") == false {
            skills.append("Swift")
        }
    }
    func learnSkillInterfaceBuilder() {
        if skills.contains("Interface Builder") == false {
            skills.append("Interface Builder")
        }
}

}
