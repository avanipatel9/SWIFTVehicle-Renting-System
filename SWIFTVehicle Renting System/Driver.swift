//
//  Driver.swift
//  SWIFTVehicle Renting System
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

class Driver:Person
{
    var firstName: String
    
    var lastName: String
    
    var gender: Gender
    
    var mobileNumber: String
    
    var birthDate: Date
    
    var emailID: String
    
    var userName: String
    
    var password: String
    
    var age: Int
    
    var drivingLicenceNumber : String
    var isHistroyCleared : Bool
    var salary : Double
    
    init(firstName: String, lastName: String, gender: Gender, mobileNumber: String, birthDate: Date, emailID: String, userName: String, password: String, drivingLicenceNumber: String, isHistroyCleared: Bool, salary: Double)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.mobileNumber = mobileNumber
        self.birthDate = birthDate
        self.emailID = emailID
        self.userName = userName
        self.password = password
        self.age = Calendar.current.dateComponents([.year], from: birthDate,to: Date()).year!
        self.drivingLicenceNumber = drivingLicenceNumber
        self.isHistroyCleared = isHistroyCleared
        self.salary = salary
    }
}
