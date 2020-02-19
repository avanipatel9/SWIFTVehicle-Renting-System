//
//  Car.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/11/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

class Car: Vehicle
{
    var carType : String
    var carColor : String
    
    init(vehicleIdentificationNumber: Int, vehicleDescription: String, manufacturerName: String, isInsured: Bool, insuranceProviderName: String, numberOfSeat: Int, fuelType: FuelType, carType: String, carColor: String) {
        self.carType = carType
        self.carColor = carColor
        super.init(vehicleIdentificationNumber: vehicleIdentificationNumber, vehicleDescription: vehicleDescription, manufacturerName: manufacturerName, isInsured: isInsured, insuranceProviderName: insuranceProviderName, numberOfSeat: numberOfSeat, fuelType: fuelType)
    }
}
