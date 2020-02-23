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
    
    func createOwners()
    {
        do
        {
            let o1 = try Owner(id: "O001", firstName: "Veronica", lastName: "Joe", gender: .Female, mobileNumber: "7894562580", birthDate: Date.from(year: 1983, month: 04, day: 25)!, emailID: "ver34Joe@gmail.com", userName: "Joe45", password: "Fcx4TG", companyTitle: "Engine Way", landlineNumber: "9854172", website: "engineWay@gmail.ca")
            o1.addVehicleOwned(id: o1.id, vehicle: b1)
            o1.addVehicleOwned(id: o1.id, vehicle: m1)
            o1.addVehicleOwned(id: o1.id, vehicle: car1)
        }

        do
        {
            let o2 = try Owner(id: "O002", firstName: "Urban", lastName: "Emblem", gender: .Male, mobileNumber: "322-77-2384", birthDate: Date.from(year: 1976, month: 07, day: 21)!, emailID: "uemblem0@cornell.edu", userName: "uemblem0", password: "mK0rf9lk", companyTitle: "Rohan-Kub", landlineNumber: "7894562", website: "RohanKubb@gmail.com")
            o2.addVehicleOwned(id: o2.id, vehicle: car2)
            o2.addVehicleOwned(id: o2.id, vehicle: b2)
            o2.addVehicleOwned(id: o2.id, vehicle: m2)
        }

        do
        {
            let o3 = try Owner(id: "O003", firstName: "Caria", lastName: "Woolmer", gender: .Male, mobileNumber: "322-77-2384", birthDate: Date.from(year: 1986, month: 07, day: 05)!, emailID: "cwoolmer0@geocities.com", userName: "cwoolmer0", password: "gDtPy0D", companyTitle: "Gottlieb-Bosco", landlineNumber: "7892062", website: "https://hhs.gov/consequat/varius.jsp")
            o3.addVehicleOwned(id: o3.id, vehicle: b2)
            o3.addVehicleOwned(id: o3.id, vehicle: m3)
            o3.addVehicleOwned(id: o3.id, vehicle: car3)
        }

        do
        {
            let o4 = try Owner(id: "O004", firstName: "Barnie", lastName: "Durban", gender: .Female, mobileNumber: "658-35-7684", birthDate: Date.from(year: 1996, month: 06, day: 12)!, emailID: "bdurban1@samsung.com", userName: "bdurban1", password: "OJPJvWo", companyTitle: "Hodkiewicz Inc", landlineNumber: "6292062", website: "    https://nps.gov/aenean/auctor/gravida/sem.json")
            o4.addVehicleOwned(id: o4.id, vehicle: b4)
            o4.addVehicleOwned(id: o4.id, vehicle: m4)
            o4.addVehicleOwned(id: o4.id, vehicle: car4)
        }

        do
        {
            let o5 = try Owner(id: "O005", firstName: "Abbey", lastName: "Exeter", gender: .Male, mobileNumber: "    407-15-7693", birthDate: Date.from(year: 1986, month: 02, day: 12)!, emailID: "    aexeter3@artisteer.com", userName: "aexeter3", password: "p6S5y5XvJUv4", companyTitle: "Ebert and Sons", landlineNumber:"277-40-4078", website: "    https://yolasite.com/at/turpis/a/pede.js")
            o5.addVehicleOwned(id: o5.id, vehicle: b5)
            o5.addVehicleOwned(id: o5.id, vehicle: m5)
            o5.addVehicleOwned(id: o5.id, vehicle: car5)
        }

    }
    
    func createCustomers()
    {
        do{
        let c1 = try Customer(id: "C001", firstName: "Cristen", lastName: "Little", gender: .Female, mobileNumber: "6471202489", birthDate: Date.from(year: 1993, month: 01, day: 15)!, emailID: "cristen.little@gmail.com", userName: "Cristen123", password: "pasword", address: "18 Young Street", city: "Toronto")
            c1.addVehicleListRented(vehicleRented: vr1, vehicleIdentificationNumber:vr1.vehicle.vehicleIdentificationNumber )
            c1.addVehicleListRented(vehicleRented: vr2, vehicleIdentificationNumber: vr2.vehicle.vehicleIdentificationNumber)
            c1.addVehicleListRented(vehicleRented: vr3, vehicleIdentificationNumber: vr3.vehicle.vehicleIdentificationNumber)
            c1.addVehicleListRented(vehicleRented: vr4, vehicleIdentificationNumber: vr4.vehicle.vehicleIdentificationNumber)
            c1.addVehicleListRented(vehicleRented: vr5, vehicleIdentificationNumber: vr5.vehicle.vehicleIdentificationNumber)
            c1.addVehicleListRented(vehicleRented: vr6, vehicleIdentificationNumber: vr6.vehicle.vehicleIdentificationNumber)
            addCustomer(customer: c1)
        }
        catch
        {
            print("Error in creating Customer c1")
        }
        
        do{

            let c2 = try Customer(id: "C002", firstName: "Wes", lastName: "Dundon", gender: .Male, mobileNumber: "458369127", birthDate: Date.from(year: 2005, month: 02, day: 20)!, emailID: "wes@gmail.com", userName: "wes45", password: "wes@12345", address: "55 Huntario Street", city: "Brampton")
            c2.addVehicleListRented(vehicleRented: vr10, vehicleIdentificationNumber: vr10.vehicle.vehicleIdentificationNumber)
            addCustomer(customer: c2)
        }
        catch
        {
            print("Error in creating Customer c2")
        }

        do{
            let c3 = try Customer(id: "C003", firstName: "Merrick", lastName: "Dondon", gender: .Male, mobileNumber: "6478952146", birthDate: Date.from(year: 1997, month: 05, day: 24)!, emailID: "merrick@gmail.com", userName: "merricl45", password: "merrickD", address: "8,Derry Road", city: "Toronto")
            c3.addVehicleListRented(vehicleRented: vr8, vehicleIdentificationNumber: vr8.vehicle.vehicleIdentificationNumber)
            c3.addVehicleListRented(vehicleRented: vr9, vehicleIdentificationNumber: vr9.vehicle.vehicleIdentificationNumber)
            c3.addVehicleListRented(vehicleRented: vr7, vehicleIdentificationNumber: vr7.vehicle.vehicleIdentificationNumber)
            addCustomer(customer: c3)
        }
        catch
        {
            print("Error in creating Customer c3")
        }

        do{
            let c4 = try Customer(id: "C004", firstName: "Samuel", lastName: "Nichol", gender: .Male, mobileNumber: "587963147", birthDate: Date.from(year: 1996, month: 08, day: 08)!, emailID: "samuel@gmail.com", userName: "Samuel_09", password: "samuel09", address: "798,Westwood", city: "Missisagua")
            c4.addVehicleListRented(vehicleRented: vr11, vehicleIdentificationNumber: vr11.vehicle.vehicleIdentificationNumber)
            addCustomer(customer: c4)
        }
        catch
        {
            print("Error in creating Customer c4")
        }
        
        do{
            let c5 =  try Customer(id: "C005", firstName: "Valaria", lastName: "Fitzer", gender: .Female, mobileNumber: "6472589634", birthDate: Date.from(year: 1993, month: 12, day: 24)!, emailID: "valaria@gmail.com", userName: "Valaria_@34", password: "valaria89", address: "303,Darcel Avenue", city: "Oakville")
            addCustomer(customer: c5)
        }
        catch
        {
            print("Error in creating Customer c5")
        }

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
    
    func displayAllCustomers()
    {
        if self.customerList.count != 0
        {
            for customer in customerList
            {
                customer.value.Display()
            }
        }
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
