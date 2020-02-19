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
    var vehicleIdentificationNumber: Int
    
    var vehicleDescription: String
    
    var manufacturerName: String
    
    var isSelfDrive: Bool
    
    var driver: String
    
    var isInsured: Bool
    
    var insuranceProviderName: String
    
    var numberOfSeat: Int
    
    var fuelType: FuelType
    
    var isVehicleRented: Bool
    
    func Display() {
         print("dd")
    }
    
    func DisplayAvailableVehicleToRent() {
         print("dd")
    }
    
   
    
    var maxTopSpeed : Int
    var milage : Double
    
    init(vehicleIdentificationNumber: Int, vehicleDescription: String, manufacturerName: String,isSelfDrive: Bool,driver: String, isInsured: Bool, insuranceProviderName: String, numberOfSeat: Int, fuelType: FuelType,isVehicleRented: Bool, maxTopSpeed: Int, milage: Double) {
        self.maxTopSpeed=maxTopSpeed
        self.milage=milage
       self.vehicleIdentificationNumber=vehicleIdentificationNumber
           self.vehicleDescription=vehicleDescription
           self.manufacturerName=manufacturerName
       self.isSelfDrive=isSelfDrive
       self.driver=driver
           self.isInsured=isInsured
           self.insuranceProviderName=insuranceProviderName
           self.numberOfSeat=numberOfSeat
           self.fuelType=fuelType
       self.isVehicleRented=isVehicleRented
    }
}
