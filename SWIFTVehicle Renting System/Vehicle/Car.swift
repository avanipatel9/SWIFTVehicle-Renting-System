//
//  Car.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/11/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

class Car: Vehicle//, Codable
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
    func setDriver(driver: Driver)
    {
        self.driver = driver
    }
    
    
    
    func Display()
    {
        print("--------------Vehicle Type : Car ---------------")
        print("\t VehicleIdentificationNumber : \(self.vehicleIdentificationNumber)")
        print("\t Vehile Description : \(self.vehicleDescription)")
        print("\t Manufacturer Name : \(self.manufacturerName)")
        print("\t is self Drive : \(self.isSelfDrive)")
        print("\t Driver : \(self.driver)")
        print("\t is Insured : \(self.isInsured)")
        print("\t Insurance Provider Name : \(self.insuranceProviderName)")
        print("\t Number of seats : \(self.numberOfSeat)")
        print("\t Fuel Type : \(self.fuelType)")
        print("\t Is Vehicle Rented : \(self.isVehicleRented)")
        print("\t Rate/Day : \(self.ratePerDay)")
        print("\t Rate/KM : \(self.ratePerKm)")
        print("\t Car Type : \(self.carType)")
        print("\t Car Color : \(self.carColor)")
    }
}
