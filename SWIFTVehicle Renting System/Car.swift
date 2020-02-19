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
    
    
    
    var carType : String
    var carColor : String
    
    init(vehicleIdentificationNumber: Int, vehicleDescription: String, manufacturerName: String,isSelfDrive: Bool,driver: String, isInsured: Bool, insuranceProviderName: String, numberOfSeat: Int, fuelType: FuelType,isVehicleRented: Bool, carType: String, carColor: String) {
        self.carType = carType
        self.carColor = carColor
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
