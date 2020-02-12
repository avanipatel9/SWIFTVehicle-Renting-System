//
//  Vehicle.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/11/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

enum FuelType
{
    case PETROL, DIESEL, ELECTRIC
}

enum RatePerDay: Int
{
    case CAR=100, MOTORCYCLE=50, BUS=250
}

enum RatePerKM: Double
{
    case CAR=5, MOTORCYCLE=1, BUS=7
}

class Vehicle
{
    var vehicleIdentificationNumber: Int
    var vehicleDescription: String
    var manufacturerName: String
    var isSelfDrive: Bool
    var driver: String?
    var isInsured: Bool
    var insuranceProviderName: String
    var numberOfSeat: Int
    var fuelType: FuelType
    var baseRatePerDay:Int
    var ratePerKM: Double
    
    
}
