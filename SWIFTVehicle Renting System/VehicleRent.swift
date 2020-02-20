//
//  VehicleRent.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/12/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
struct VehicleRent
{
    var startDate:Date
    var  endDate:Date
    var noOfDaysRented:Int
    var  vehicle:Vehicle
    var  noOfKmDrived:Float
    var  totalBillToPay:Double = 0.0
    lazy var vehiclesRented = [String: Vehicle]()
    
    init(startDate:Date,endDate:Date,vechile:Vehicle,noOfKmDrived:Float) {
        self.startDate=startDate
        self.endDate=endDate
        self.noOfDaysRented=Calendar.current.dateComponents([.day], from: startDate,to: endDate).day!
        self.noOfKmDrived=noOfKmDrived
        self.vehicle=vechile
        // self.totalBillToPay=totalBillToPay
    }
    
    mutating func addVehicleRented(vehicle: Vehicle, vehicleIdentificationNumber: String)
    {
        vehiclesRented.updateValue(vehicle, forKey: vehicleIdentificationNumber)
    }
    
   
    
}
