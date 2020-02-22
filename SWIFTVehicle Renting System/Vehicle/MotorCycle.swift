//
//  MotorCycle.swift
//  SWIFTVehicle Renting System
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

class MotorCycle : Vehicle, Codable
{
    var vehicleIdentificationNumber: String
    
    var vehicleDescription: String
    
    var manufacturerName: String
    
    var isSelfDrive: Bool
    
    var driver: Driver?
    
    var isInsured: Bool
    
    var insuranceProviderName: String
    
    var numberOfSeat: Int
    
    var fuelType: FuelType
    
    var isVehicleRented: Bool
    
    var ratePerDay: RatePerDay
    
    var ratePerKm: RatePerKM
   
    
    func DisplayAvailableVehicleToRent() {
         print("dd")
    }
    
   
    
    var maxTopSpeed : Int
    var milage : Double
    
    init(vehicleIdentificationNumber: String, vehicleDescription: String, manufacturerName: String,isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String, numberOfSeat: Int, fuelType: FuelType,isVehicleRented: Bool, maxTopSpeed: Int, milage: Double) {
        self.maxTopSpeed=maxTopSpeed
        self.milage=milage
        self.vehicleIdentificationNumber=vehicleIdentificationNumber
        self.vehicleDescription=vehicleDescription
        self.manufacturerName=manufacturerName
        self.isSelfDrive=isSelfDrive
        self.isInsured=isInsured
        self.insuranceProviderName=insuranceProviderName
        self.numberOfSeat=numberOfSeat
        self.fuelType=fuelType
        self.isVehicleRented=isVehicleRented
        self.ratePerDay=RatePerDay.MOTORCYCLE
        self.ratePerKm=RatePerKM.MOTORCYCLE
    }
    
    func Display()
    {
        print("VehicleIdentificationNumber : \(self.vehicleIdentificationNumber)")
        print("Vehile Description : \(self.vehicleDescription)")
        print("Manufacturer Name : \(self.manufacturerName)")
        print("is self Drive : \(self.isSelfDrive)")
        print("Driver : \(self.driver)")
        print("is Insured : \(self.isInsured)")
        print("Insurance Provider Name : \(self.insuranceProviderName)")
        print("Number of seats : \(self.numberOfSeat)")
        print("Fuel Type : \(self.fuelType)")
        print("Is Vehicle Rented : \(self.isVehicleRented)")
        
        print("Max Top Speed : \(self.maxTopSpeed)")
        print("Milage : \(self.milage)")
        
    }
}
