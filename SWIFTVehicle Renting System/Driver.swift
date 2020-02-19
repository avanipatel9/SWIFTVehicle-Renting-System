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
    var drivingLicenceNumber : String
    var isHistroyCleared : Bool
    var salary : Double
    
    init(drivingLicenceNumber:String,isHistroryCleared:Bool,salary:Double,firstName:String,lastName:String,gender:Gender,mobileNumber:String,birthDate:Date,emailID:String,userName:String,password:String)
    {
        self.drivingLicenceNumber=drivingLicenceNumber
        self.isHistroyCleared=isHistroryCleared
        self.salary=salary
        super.init(firstName: firstName, lastName: lastName, gender: gender, mobileNumber: mobileNumber, birthDate: birthDate, emailID: emailID, userName: userName, password: password)
    }
}
