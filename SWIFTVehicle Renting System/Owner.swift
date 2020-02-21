//
//  Owner.swift
//  SWIFTVehicle Renting System
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Owner:Person
{
    var id: String
    
    var firstName: String
    
    var lastName: String
    
    var gender: Gender
    
    var mobileNumber: String
    
    var birthDate: Date
    
    var emailID: String
    
    var userName: String
    
    var password: String
    
    var age: Int
    
    var companyTitle:String
    var landlineNumber:String
    var website:String
    var vehicleListOwned:[String:Vehicle]?
    var fullName:String{
        return "\(firstName) \(lastName)"
    }
    
    init(id:String, firstName: String, lastName: String, gender: Gender, mobileNumber: String, birthDate: Date, emailID: String, userName: String, password: String, companyTitle:String, landlineNumber:String, website:String)
    {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.mobileNumber = mobileNumber
        self.birthDate = birthDate
        self.emailID = emailID
        self.userName = userName
        self.password = password
        self.age = Calendar.current.dateComponents([.year], from: birthDate,to: Date()).year!
        self.companyTitle=companyTitle
        self.landlineNumber=landlineNumber
        self.website=website
        
    }
        
        func Display() {
            print("First Name : \(self.firstName)")
            print("Last Name: \(self.lastName)")
            print("Gender : \(self.gender)")
            print("Mobile Number : \(self.mobileNumber)")
            print("BirthDate : \(self.birthDate)")
            print("Emaild ID : \(self.emailID)")
            print("User Name : \(self.userName)")
            //Add extension for password encrypt decrypt
            print("Password Encrypted : \(self.password)")
            print("Password Decrypted : \(self.password)")
            print("Age : \(self.age)")
            
            
           }
    
}

