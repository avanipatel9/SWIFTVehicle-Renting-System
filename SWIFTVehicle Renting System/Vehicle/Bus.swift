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
    var isWifiAvailable:Bool
    
    //Initializer
    init(vehicleIdentificationNumber: String, vehicleDescription: String, manufacturerName: String,isSelfDrive: Bool, driver: Driver?, isInsured: Bool, insuranceProviderName: String, numberOfSeat: Int, fuelType: FuelType,isVehicleRented: Bool,busType:String,isServiceAvailable:Bool,isWIfiAvailable:Bool)
    {
        self.busType=busType
        self.isWifiAvailable=isWIfiAvailable
        self.isServiceAvailable=isServiceAvailable
        self.vehicleIdentificationNumber=vehicleIdentificationNumber
        self.vehicleDescription=vehicleDescription
        self.manufacturerName=manufacturerName
        self.isSelfDrive=isSelfDrive
        if self.isSelfDrive==false{
            self.driver=driver
        }
        else
        {
            self.driver = nil
        }
        self.isInsured=isInsured
        self.insuranceProviderName=insuranceProviderName
        self.numberOfSeat=numberOfSeat
        self.fuelType=fuelType
        self.isVehicleRented=isVehicleRented
        self.ratePerDay=RatePerDay.BUS
        self.ratePerKm=RatePerKM.BUS
    }
    
    func setDriver(driver: Driver)
    {
        self.driver = driver
    }
    
    func Display()
    {
        print("******* Vehicle Type : 🚌 Bus ******* \n")
        //print("-----------------------------------------------")
        print("\t VehicleIdentificationNumber : \(self.vehicleIdentificationNumber)")
        print("\t Vehile Description : \(self.vehicleDescription)")
        print("\t Manufacturer Name : \(self.manufacturerName)")
        if self.isSelfDrive==false
        {
            print("\t is self Drive : No")
            self.driver?.Display()
        }
        else
        {
            print("\t is self Drive : Yes")
        }
        print("\t Number of seats : \(self.numberOfSeat)")
        print("\t Fuel Type : \(self.fuelType)")
        //print("\t Is Vehicle Rented : \(self.isVehicleRented)")
        print("\t Rate/Day : \(self.ratePerDay.rawValue.currency())")
        print("\t Rate/KM : \(self.ratePerKm.rawValue.currency())")
        print("\t Bus Type : \(self.busType)")
        print("\t isServiceAvailable : \(self.isServiceAvailable)")
        print("\t isWifiAvailable : \(self.isServiceAvailable)")
        
    }
}
