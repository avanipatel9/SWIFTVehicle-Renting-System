//
//  Customer.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/12/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Customer: Person  {
    
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
    
    var address: String
    var city: String
    
    lazy var customerDetails = [String : Customer]()
    
    lazy var vehicleListRented = [String : VehicleRent]()
   
    
    init(id:String, firstName: String, lastName: String, gender: Gender, mobileNumber: String, birthDate: Date, emailID: String, userName: String, password: String, address: String, city: String) {
        
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
        self.address = address
        self.city = city
        self.address = address
        self.city = city
    }
    

    
    func addVehicleListRented(vehicleRented: VehicleRent, vehicleIdentificationNumber: String)
    {
        vehicleListRented.updateValue(vehicleRented, forKey: vehicleIdentificationNumber)
    }
    
    func removeVehicleList(vehicleRented: VehicleRent, vehicleIdentificationNumber: String)
    {
        vehicleListRented.removeValue(forKey: vehicleIdentificationNumber)
    }

    
    func Display()
    {
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
