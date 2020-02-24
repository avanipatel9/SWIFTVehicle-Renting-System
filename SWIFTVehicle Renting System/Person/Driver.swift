//
//  Driver.swift
//  SWIFTVehicle Renting System
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

class Driver:Person//, Codable
{
    var id: String
    
    var firstName: String
    
    var lastName: String
    
    var gender: Gender
    
    var mobileNumber: String
    
    var birthDate: Date?
    
    var emailID: String?
    
    var userName: String
    
    var password: String
    
    var age: Int?
    {
        return Calendar.current.dateComponents([.year], from: birthDate!,to: Date()).year
    }
    
    var drivingLicenceNumber : String
    var isHistroyCleared : Bool
    var salary : Double
    
    init(id: String, firstName: String, lastName: String, gender: Gender, mobileNumber: String, birthDate: Date, emailID: String, userName: String, password: String, drivingLicenceNumber: String, isHistroyCleared: Bool, salary: Double) throws
    {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        if mobileNumber.count != 10
        {
          print("Name :- \(firstName) has  Invalid Mobile Number \(mobileNumber) : Cannot be less than 10 digits")
            throw  CustomException.invalidNumber
            
        }
        self.mobileNumber=mobileNumber
        //self.mobileNumber = mobileNumber
        self.birthDate = birthDate
       
        //self.emailID = emailID
        self.userName = userName
        self.password = password
        //self.age = Calendar.current.dateComponents([.year], from: birthDate,to: Date()).year!
        self.drivingLicenceNumber = drivingLicenceNumber
        self.isHistroyCleared = isHistroyCleared
        self.salary = salary
        if isEmailValid(email: emailID)
                  {
                     
                      self.emailID=emailID
                  }
                   else
                   {
                       print("Invalid Email ID for \(self.firstName) : \(emailID) ")
                       throw CustomException.invalidEmail
               
                   }
    }
    
    func isEmailValid(email:String)  -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    func Display() {
        print("First Name : \(self.firstName)")
        print("Last Name: \(self.lastName)")
        print("Gender : \(self.gender)")
        print("Mobile Number : \(self.mobileNumber)")
        print("BirthDate : \(self.birthDate!.getForamttedDate())")
        print("Emaild ID : \(self.emailID ?? "nil")")
        print("User Name : \(self.userName)")
        //Add extension for password encrypt decrypt
        print("Password Encrypted : \(self.password)")
        print("Password Decrypted : \(self.password)")
        print("Age : \(self.age!)")
    }
}
