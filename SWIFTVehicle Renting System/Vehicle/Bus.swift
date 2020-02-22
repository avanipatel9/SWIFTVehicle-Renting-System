//
//  Bus.swift
//  SWIFTVehicle Renting System
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Bus:Vehicle//, Codable
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
    
    var busType:String
    var isServiceAvailable:Bool
    var   isWifiAvailable:Bool
    
    //Initializer
    init(vehicleIdentificationNumber: String, vehicleDescription: String, manufacturerName: String,isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String, numberOfSeat: Int, fuelType: FuelType,isVehicleRented: Bool,busType:String,isServiceAvailable:Bool,isWIfiAvailable:Bool)
    {
        self.busType=busType
        self.isWifiAvailable=isWIfiAvailable
        self.isServiceAvailable=isServiceAvailable
        self.vehicleIdentificationNumber=vehicleIdentificationNumber
        self.vehicleDescription=vehicleDescription
        self.manufacturerName=manufacturerName
        self.isSelfDrive=isSelfDrive
        self.isInsured=isInsured
        self.insuranceProviderName=insuranceProviderName
        self.numberOfSeat=numberOfSeat
        self.fuelType=fuelType
        self.isVehicleRented=isVehicleRented
        self.ratePerDay=RatePerDay.BUS
        self.ratePerKm=RatePerKM.BUS
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
        
        print("Bus Type : \(self.busType)")
        print("isServiceAvailable : \(self.isServiceAvailable)")
        print("isWifiAvailable : \(self.isServiceAvailable)")
        
    }
}
