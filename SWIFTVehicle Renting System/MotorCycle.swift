//
//  MotorCycle.swift
//  SWIFTVehicle Renting System
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

class MotorCycle : Vehicle
{
    var maxTopSpeed : Int
    var milage : Double
    
    init(vehicleIdentificationNumber: Int, vehicleDescription: String, manufacturerName: String, isInsured: Bool, insuranceProviderName: String, numberOfSeat: Int, fuelType: FuelType, maxTopSpeed: Int, milage: Double) {
        self.maxTopSpeed=maxTopSpeed
        self.milage=milage
        super.init(vehicleIdentificationNumber: vehicleIdentificationNumber, vehicleDescription: vehicleDescription, manufacturerName: manufacturerName, isInsured: isInsured, insuranceProviderName: insuranceProviderName, numberOfSeat: numberOfSeat, fuelType: fuelType)
    }
}
