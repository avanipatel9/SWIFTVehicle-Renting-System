//
//  Vehicle.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/11/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

enum FuelType: String, Codable
{
    case PETROL, DIESEL, ELECTRIC
}

enum RatePerDay: Int, Codable
{
    case CAR=100, MOTORCYCLE=50, BUS=250
}

enum RatePerKM: Double, Codable
{
    case CAR=5.0, MOTORCYCLE=1.0, BUS=7.0
}

protocol Vehicle:IDisplay
{
    var vehicleIdentificationNumber: String { get set }
    var vehicleDescription: String { get set }
    var manufacturerName: String { get set }
    var isSelfDrive: Bool { get set }
    var driver: String { get set }
    var isInsured: Bool { get set }
    var insuranceProviderName: String { get set }
    var numberOfSeat: Int { get set }
    var fuelType: FuelType { get set }
    var isVehicleRented:Bool {get set }
    var ratePerDay: RatePerDay {get}
    var ratePerKm: RatePerKM{get}
    
    
    func Display()
    func DisplayAvailableVehicleToRent()
    

}
