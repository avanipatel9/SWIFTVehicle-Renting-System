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
}
