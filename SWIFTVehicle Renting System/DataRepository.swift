//
//  DataRepository.swift
//  SWIFTVehicle Renting System
//
//  Created by MacStudent on 2020-02-20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

//Singleton class
class DataRepository
{
  static private  var repo = DataRepository()
   private  var vehicleList=Dictionary<String,Vehicle> ()
   private init() {
        
    }
    
   static func getInstance()->DataRepository
    {
        
    }
    
    func addVehicle(vehicle:Vehicle)
    {
        self.vehicleList.updateValue(vehicle, forKey: vehicle.vehicleIdentificationNumber)
    }
    
    func getVehicle(vin:String)->Vehicle?
    {
        self.vehicleList[vin]
    }
    
    func getAllVehicle()->[String:Vehicle]
    {
        self.vehicleList
    }
}