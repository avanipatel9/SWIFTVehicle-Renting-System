//
//  Car.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/11/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

class Car: Vehicle, Codable
{
    
    var vehicleIdentificationNumber: String
    
    var vehicleDescription: String
    
    var manufacturerName: String
    
    var isSelfDrive: Bool
    
    var driver: String?
    
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
    
    
    
    var carType : String
    var carColor : String
    
    init(vehicleIdentificationNumber: String, vehicleDescription: String, manufacturerName: String,isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String, numberOfSeat: Int, fuelType: FuelType,isVehicleRented: Bool, carType: String, carColor: String) {
        self.carType = carType
        self.carColor = carColor
        self.vehicleIdentificationNumber=vehicleIdentificationNumber
        self.vehicleDescription=vehicleDescription
        self.manufacturerName=manufacturerName
        self.isSelfDrive=isSelfDrive
        self.isInsured=isInsured
        self.insuranceProviderName=insuranceProviderName
        self.numberOfSeat=numberOfSeat
        self.fuelType=fuelType
        self.isVehicleRented=isVehicleRented
        self.ratePerDay=RatePerDay.CAR
        self.ratePerKm=RatePerKM.CAR
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
        
        print("Car Type : \(self.carType)")
        print("Car Color : \(self.carColor)")
    }
}
