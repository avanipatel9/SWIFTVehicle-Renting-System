//
//  VehicleRent.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/12/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
struct VehicleRent:IDisplay//, Codable
{
    var startDate:Date?
    var endDate:Date?
    var noOfDaysRented:Int
    {
        return Calendar.current.dateComponents([.day], from: startDate!,to: endDate!).day!
    }
    var vehicle:Vehicle
    var noOfKmDrived:Double
    var totalBillToPay:Double
    {
        return Double(vehicle.ratePerDay.rawValue * self.noOfDaysRented)+(vehicle.ratePerKm.rawValue * self.noOfKmDrived)
    }
    //lazy var vehiclesRented = [String: Vehicle]()
    
    init(startDate:Date,endDate:Date,vechile:Vehicle,noOfKmDrived:Double) {
        self.startDate=startDate
        self.endDate=endDate
        self.noOfKmDrived=noOfKmDrived
        self.vehicle=vechile
        // self.totalBillToPay=totalBillToPay
    }
    
//     init(from decoder: Decoder) throws {
//        fatalError("init(from:) has not been implemented")
//    }
    
//    mutating func addVehicleRented(vehicle: Vehicle, vehicleIdentificationNumber: String)
//    {
//        vehiclesRented.updateValue(vehicle, forKey: vehicleIdentificationNumber)
//    }
//
//   mutating func removeVehcleRented(vehicle: Vehicle, vehicleIdentificationNumber: String)
//      {
//          vehiclesRented.removeValue(forKey: vehicleIdentificationNumber)
//      }
    
    func Display()
    {
        self.vehicle.Display()
        print("-----------------------------------------------")
        print("\t \t Rent Start Date : \(self.startDate!)")
        print("\t \t Rent End Date : \(self.endDate!)")
        print("\t \t No. of days to rent : \(noOfDaysRented)")
        print("\t \t No. of KM drived : \(self.noOfKmDrived)")
        print("\t \t Total Bill to Pay : \(self.totalBillToPay)")
    }
}
