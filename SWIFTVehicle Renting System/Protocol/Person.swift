//
//  Person.swift
//  SWIFTVehicle Renting System
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

enum Gender: String//, Codable
{
    case Male, Female, Other
}

protocol Person:IDisplay
{
    var id : String { get set}
    var firstName : String { get set }
    var lastName : String { get set }
    var gender : Gender { get set }
    var mobileNumber : String { get set }
    var birthDate : Date? { get set }
    var emailID : String? { get set }
    var userName : String { get set }
    var password : String { get set }
    var age:Int? { get }
}
