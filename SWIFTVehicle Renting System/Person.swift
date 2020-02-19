//
//  Person.swift
//  SWIFTVehicle Renting System
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

enum Gender
{
    case MALE, FEMALE, OTHER
}

class Person
{
    var firstName : String
    var lastName : String
    var gender : Gender
    var mobileNumber : String
    var birthDate : Date
    var emailID : String
    var userName : String
    var password : String
    var age:Int
    
    init(firstName:String,lastName:String,gender:Gender,mobileNumber:String,birthDate:Date,emailID:String,userName:String,password:String)
    {
        self.firstName=firstName
        self.lastName=lastName
        self.gender=gender
        self.mobileNumber=mobileNumber
        self.emailID=emailID
        self.userName=userName
        self.password=password
        self.birthDate=birthDate
        self.age=Calendar.current.dateComponents([.year], from: birthDate,to: Date()).year!
    }
}
