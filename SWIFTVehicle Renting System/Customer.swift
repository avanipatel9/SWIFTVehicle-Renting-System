//
//  Customer.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/12/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Customer: Person {
    var address: String
    var city: String
    var vehicleRent: VehicleRent?
    
    init(firstName: String, lastName: String, gender: Gender, mobileNumber: String, birthDate: Date, emailID: String, userName: String, password: String, address: String, city: String) {
        self.address = address
        self.city = city
        super.init(firstName: firstName, lastName: lastName, gender: gender, mobileNumber: mobileNumber, birthDate: birthDate, emailID: emailID, userName: userName, password: password)
    }
}
