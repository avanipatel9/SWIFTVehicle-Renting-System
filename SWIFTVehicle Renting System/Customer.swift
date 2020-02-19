//
//  Customer.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/12/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Customer: Person {
    
    var firstName: String
    
    var lastName: String
    
    var gender: Gender
    
    var mobileNumber: String
    
    var birthDate: Date
    
    var emailID: String
    
    var userName: String
    
    var password: String
    
    var age: Int
    
    var address: String
    var city: String
    var vehicleRent: VehicleRent?
    
   init(firstName: String, lastName: String, gender: Gender, mobileNumber: String, birthDate: Date, emailID: String, userName: String, password: String, address: String, city: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.mobileNumber = mobileNumber
        self.birthDate = birthDate
        self.emailID = emailID
        self.userName = userName
        self.password = password
        self.age = Calendar.current.dateComponents([.year], from: birthDate,to: Date()).year!
        self.address = address
        self.city = city
        self.address = address
        self.city = city
    }
    
    
}
