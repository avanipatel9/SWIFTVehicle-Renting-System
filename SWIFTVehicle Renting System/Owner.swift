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
    var companyTitle:String
    var landlineNumber:String
    var website:String
    var vehicleListOwned:[String:Vehicle]?
    
    init(companyTitle:String,landlineNumber:String,website:String,firstName:String,lastName:String,gender:Gender,mobileNumber:String,birthDate:Date,emailID:String,userName:String,password:String) {
        self.companyTitle=companyTitle
        self.landlineNumber=landlineNumber
        self.website=website
        super.init(firstName: firstName, lastName: lastName, gender: gender, mobileNumber: mobileNumber, birthDate: birthDate, emailID: emailID, userName: userName, password: password)
    }
    
}

