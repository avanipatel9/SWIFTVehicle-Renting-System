//
//  VehicleRent.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/12/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
struct VehicleRent:IDisplay, Codable
{
    func Display() {
        
    }
    
    var startDate:Date?
    var endDate:Date?
    var noOfDaysRented:Int
    var vehicle:Car
    var noOfKmDrived:Double
    var totalBillToPay:Double
    {
        return Double(vehicle.ratePerDay.rawValue * self.noOfDaysRented)+(vehicle.ratePerKm.rawValue * self.noOfKmDrived)
    }
    //lazy var vehiclesRented = [String: Vehicle]()
    
    init(startDate:Date,endDate:Date,vechile:Car,noOfKmDrived:Double) {
        self.startDate=startDate
        self.endDate=endDate
        self.noOfDaysRented=Calendar.current.dateComponents([.day], from: startDate,to: endDate).day!
        self.noOfKmDrived=noOfKmDrived
        self.vehicle=vechile
        // self.totalBillToPay=totalBillToPay
    }
    
     init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
    
//    mutating func addVehicleRented(vehicle: Vehicle, vehicleIdentificationNumber: String)
//    {
//        vehiclesRented.updateValue(vehicle, forKey: vehicleIdentificationNumber)
//    }
//
//   mutating func removeVehcleRented(vehicle: Vehicle, vehicleIdentificationNumber: String)
//      {
//          vehiclesRented.removeValue(forKey: vehicleIdentificationNumber)
//      }
    
}
