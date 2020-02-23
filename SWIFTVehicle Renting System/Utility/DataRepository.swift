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
    private var customerList=Dictionary<String,Customer>()
    private  var vehicleList=Dictionary<String,Vehicle> ()
    private init() {
        
    }
    
    static func getInstance()->DataRepository{
        return repo
    }
    
    func addCustomer(customer:Customer)
    {
        self.customerList.updateValue(customer, forKey: customer.id)
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
    
    func displayAvailableVehicleToRent()
    {
        print("***********************************************")
        print("----------Available Vehicles to rent----------")
        print("***********************************************")
        print("-----------------------------------------------")
        if vehicleList.count == 0
        {
            print("Note : All vehicles are rented")
        }
        else
        {
            for availVehicle in vehicleList
            {
                if availVehicle.value.isVehicleRented==false
                {
                    
                    availVehicle.value.Display()
                    print("-----------------------------------------------")
                }
            }
        }
    }
}
