//
//  main.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/10/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

var dr = DataRepository.getInstance();


//Function to Read from Json Files
//func readCustomerCodable(fileName: String)
//{
//    let filepPath = Bundle.main.url(forResource: fileName, withExtension: "json")
//
//    guard let path = filepPath else {
//        print("Invalid File Path found")
//        return
//    }
//
//    guard let data = try? Data(contentsOf: path) else {
//        print("Error while reading Data from URL")
//        return
//    }
    
//    guard let customer = try? JSONSerialization.jsonObject(with: data, options: [])else {
//           print("Error while reading JSON Data from file")
//           return
//        }
    
//    do{
//    let customers = try JSONDecoder().decode([Customer].self, from: data)
//        //print(customers)
//        for c in customers
//        {
//            c.Display()
//        }
//    }catch {
//        print("Error while reading JSON Data from file")
//        print(error)
//
//    }
//}
//print("***********  Read from Json Files  ****************")
//readCustomerCodable(fileName: "CustomerInputData") //Read Json File
print("**************************************************\n\n")


//let formatter = DateFormatter()
//formatter.dateFormat = "yyyy/MM/dd"



//Create Motorcycle Objects
    let m1 = MotorCycle(vehicleIdentificationNumber: "V99JP7L7808854296", vehicleDescription: "4dr Crew Cab 4WD SB w/2HY (6.0L 8cyl gas/electric hybrid 4A)", manufacturerName: "Yamaha", isSelfDrive:true, isInsured: true, insuranceProviderName: "LIC", numberOfSeat: 2, fuelType: .DIESEL, isVehicleRented: true, maxTopSpeed: 80, milage: 150)
dr.addVehicle(vehicle: m1)

    let m2 = MotorCycle(vehicleIdentificationNumber: "4XZ2M7U06Z329433A", vehicleDescription: "Work Truck 2dr Regular Cab 8 ft. LB (4.3L 6cyl 4A)", manufacturerName: "Honda", isSelfDrive: false, isInsured: true, insuranceProviderName: "Benny", numberOfSeat: 2, fuelType: .ELECTRIC, isVehicleRented: true, maxTopSpeed: 60, milage: 70)
dr.addVehicle(vehicle: m2)

let m3 = MotorCycle(vehicleIdentificationNumber: "8H6S28DT397218808", vehicleDescription: "Grand Touring 4dr SUV (3.0L 6cyl 6A)", manufacturerName: "Ducati", isSelfDrive: true, isInsured: true, insuranceProviderName: "Keith", numberOfSeat: 2, fuelType: .PETROL, isVehicleRented: false, maxTopSpeed: 100, milage: 90)
dr.addVehicle(vehicle: m3)

    let m4 = MotorCycle(vehicleIdentificationNumber: "6YV915045UG755121", vehicleDescription: "LT 4dr Crew Cab 4WD SB (3.7L 5cyl 4A)", manufacturerName: "Charlie", isSelfDrive: false, isInsured: true, insuranceProviderName: "Marry", numberOfSeat: 2, fuelType: .PETROL, isVehicleRented: false, maxTopSpeed: 80, milage: 190)
dr.addVehicle(vehicle: m4)

    let m5 = MotorCycle(vehicleIdentificationNumber: "R895E663184691870", vehicleDescription: "4dr Sedan (4.8L 8cyl 7AM)", manufacturerName: "Kawasaki", isSelfDrive: true, isInsured: true, insuranceProviderName: "PErlta", numberOfSeat: 2, fuelType: .PETROL, isVehicleRented: true, maxTopSpeed: 100, milage: 200)
dr.addVehicle(vehicle: m5)

//create Driver
do{
    let d1 = try Driver(id: "D001", firstName: "Zora", lastName: "Ferris", gender: .Female, mobileNumber: "4796672909", birthDate: Date.from(year: 1998, month: 07, day: 05)!, emailID: "zferris0@disqus.com", userName: "zferris0", password: "EAtVnCuCe6Us", drivingLicenceNumber: "nzQq2Tx5g5HE", isHistroyCleared: true, salary: 127.62)
}

do
{
    let d2 = try Driver(id: "D002", firstName: "Appolonia", lastName: "Cattroll", gender: .Female, mobileNumber: "8983450523", birthDate: Date.from(year: 1995, month: 11, day: 19)!, emailID: "acattroll1@psu.edu", userName: "acattroll1", password: "x9e6xnkMpBr3", drivingLicenceNumber: "NfL6HThI", isHistroyCleared: true, salary: 179.17)
}

do
{
    let d3 = try Driver(id: "D003", firstName: "Vernice", lastName: "McGougan", gender: .Female, mobileNumber: "4264923681", birthDate: Date.from(year: 1996, month: 09, day: 03)!, emailID: "vmcgougan2@umn.edu", userName: "vmcgougan2", password: "RE5IOBcVm", drivingLicenceNumber: "xxLTfp9", isHistroyCleared: true, salary: 147.80)
}

do
{
    let d4 = try Driver(id: "D004", firstName: "Quinn", lastName: "Popple", gender: .Female, mobileNumber: "9566019213", birthDate: Date.from(year: 1999, month: 10, day: 12)!, emailID: "qpopple3@google.fr", userName: "qpopple3", password: "B9luyIYcUh", drivingLicenceNumber: "dTKgyU6SD52", isHistroyCleared: true, salary: 169.15)
}

do
{
    let d5 = try Driver(id: "D005", firstName: "Samara", lastName: "Davenell", gender: .Female, mobileNumber: "9001558799", birthDate: Date.from(year: 1972, month: 11, day: 27)!, emailID: "sdavenell4@mlb.com", userName: "sdavenell4", password: "FZdE2ZnFVMb", drivingLicenceNumber: "HdGB1xhqPzGs", isHistroyCleared: false, salary: 177.47)
}

//create car
    let car1 = Car(vehicleIdentificationNumber: "Z5K39Z0W76366K354", vehicleDescription: "DX 4dr Sedan", manufacturerName: "Honda", isSelfDrive: true, isInsured: true, insuranceProviderName: "Logan", numberOfSeat: 4, fuelType: .DIESEL, isVehicleRented: true, carType: "SUV", carColor: "Black")
dr.addVehicle(vehicle: car1)

    let car2 = Car(vehicleIdentificationNumber: "6V035N1185A022427", vehicleDescription: "Limited 4dr SUV (4.7L 8cyl 5A)", manufacturerName: "Suzuki", isSelfDrive: false, isInsured: true, insuranceProviderName: "Ben", numberOfSeat: 6, fuelType: .DIESEL, isVehicleRented: true, carType: "Sedan", carColor: "Gray")
dr.addVehicle(vehicle: car2)

    let car3 = Car(vehicleIdentificationNumber: "1V461X50812V17645", vehicleDescription: "SEL 4dr Sedan (3.0L 6cyl 4A)", manufacturerName: "Honda", isSelfDrive: true, isInsured: true, insuranceProviderName: "William", numberOfSeat: 2, fuelType: .ELECTRIC, isVehicleRented: false, carType: "Compact", carColor: "White")
dr.addVehicle(vehicle: car3)

    let car4 = Car(vehicleIdentificationNumber: "4K0845277599C59LB", vehicleDescription: "4dr SUV AWD (2.5L 4cyl gas/electric hybrid CVT)", manufacturerName: "BMW", isSelfDrive: true, isInsured: true, insuranceProviderName: "Edward", numberOfSeat: 4, fuelType: .PETROL, isVehicleRented: true, carType: "Luxury", carColor: "Red")
dr.addVehicle(vehicle: car4)

    let car5 = Car(vehicleIdentificationNumber: "6V035N1185A022427", vehicleDescription: "4dr Sedan w/Technology Package (3.5L 6cyl 6A)", manufacturerName: "Toyoto", isSelfDrive: false, isInsured: true, insuranceProviderName: "Phenix", numberOfSeat: 8, fuelType: .DIESEL, isVehicleRented: false, carType: "Minivan", carColor: "Black")
dr.addVehicle(vehicle: car5)

//create owner
do
{
    let o1 = try Owner(id: "O001", firstName: "Veronica", lastName: "Joe", gender: .Female, mobileNumber: "7894562580", birthDate: Date.from(year: 1983, month: 04, day: 25)!, emailID: "ver34Joe@gmail.com", userName: "Joe45", password: "Fcx4TG", companyTitle: "Engine Way", landlineNumber: "9854172", website: "engineWay@gmail.ca")
    o1.addVehicleOwned(o1.id,b1)
     o1.addVehicleOwned(o1.id,m1)
}

do
{
    let o2 = try Owner(id: "O002", firstName: "Urban", lastName: "Emblem", gender: .Male, mobileNumber: "322-77-2384", birthDate: Date.from(year: 1976, month: 07, day: 21)!, emailID: "uemblem0@cornell.edu", userName: "uemblem0", password: "mK0rf9lk", companyTitle: "Rohan-Kub", landlineNumber: "7894562", website: "RohanKubb@gmail.com")
       o2.addVehicleOwned(o2.id,car1)
}

do
{
    let o3 = try Owner(id: "O003", firstName: "Caria", lastName: "Woolmer", gender: .Male, mobileNumber: "322-77-2384", birthDate: Date.from(year: 1986, month: 07, day: 05)!, emailID: "cwoolmer0@geocities.com", userName: "cwoolmer0", password: "gDtPy0D", companyTitle: "Gottlieb-Bosco", landlineNumber: "7892062", website: "https://hhs.gov/consequat/varius.jsp")
      o3.addVehicleOwned(o3.id,b2)
     o3.addVehicleOwned(o3.id,m2)
     o3.addVehicleOwned(o3.id,m3)
}

do
{
    let o4 = try Owner(id: "O004", firstName: "Barnie", lastName: "Durban", gender: .Female, mobileNumber: "658-35-7684", birthDate: Date.from(year: 1996, month: 06, day: 12)!, emailID: "bdurban1@samsung.com", userName: "bdurban1", password: "OJPJvWo", companyTitle: "Hodkiewicz Inc", landlineNumber: "6292062", website: "    https://nps.gov/aenean/auctor/gravida/sem.json")
}

do
{
    let o5 = try Owner(id: "O005", firstName: "Abbey", lastName: "Exeter", gender: .Male, mobileNumber: "    407-15-7693", birthDate: Date.from(year: 1986, month: 02, day: 12)!, emailID: "    aexeter3@artisteer.com", userName: "aexeter3", password: "p6S5y5XvJUv4", companyTitle: "Ebert and Sons", landlineNumber:"277-40-4078", website: "    https://yolasite.com/at/turpis/a/pede.js")
}

//create bus
    let b1 = Bus(vehicleIdentificationNumber: "5S579939423J74119", vehicleDescription: "xDrive30i 4dr SUV AWD (3.0L 6cyl 6M)", manufacturerName: "Leo", isSelfDrive: false, isInsured: true, insuranceProviderName: "Samuel", numberOfSeat: 12, fuelType: FuelType.DIESEL, isVehicleRented: true, busType: "Volvo", isServiceAvailable: true, isWIfiAvailable: true)
dr.addVehicle(vehicle: b1)

    let b2 = Bus(vehicleIdentificationNumber: "K14G7289138870436", vehicleDescription: "Laramie 4dr Club Cab SB (3.7L 6cyl 4A)", manufacturerName: "Noha", isSelfDrive: false, isInsured: true, insuranceProviderName: "Antonie", numberOfSeat: 10, fuelType: FuelType.ELECTRIC, isVehicleRented: true, busType: "Volvo", isServiceAvailable: true, isWIfiAvailable: true)
dr.addVehicle(vehicle: b2)
    let b3 = Bus(vehicleIdentificationNumber: "G9416715255045385", vehicleDescription: "S 4dr SUV AWD (2.5L 4cyl CVT)", manufacturerName: "Oliver", isSelfDrive: false,isInsured: true, insuranceProviderName: "Louis", numberOfSeat: 10, fuelType: FuelType.DIESEL, isVehicleRented: true, busType: "MiniBus", isServiceAvailable: true, isWIfiAvailable: true)
dr.addVehicle(vehicle: b3)
    let b4 = Bus(vehicleIdentificationNumber: "4XZ2M7U06Z329433A", vehicleDescription: "Sport 4dr SUV 4WD (3.5L 6cyl 5A)", manufacturerName: "Charles", isSelfDrive: false,isInsured: true, insuranceProviderName: "Andrew", numberOfSeat: 18, fuelType: FuelType.PETROL, isVehicleRented: true, busType: "Volvo", isServiceAvailable: true, isWIfiAvailable: true)
dr.addVehicle(vehicle: b4)
    let b5 = Bus(vehicleIdentificationNumber: "V99JP7L7808854296", vehicleDescription: "2dr Regular Cab LB (4.0L 6cyl 6M)", manufacturerName: "Mathaes", isSelfDrive: false,isInsured: true, insuranceProviderName: "Olivia", numberOfSeat: 8, fuelType: FuelType.ELECTRIC, isVehicleRented: true, busType: "MiniBus", isServiceAvailable: true, isWIfiAvailable: true)
dr.addVehicle(vehicle: b5)

//Create vehicleRent object
let vr1 = VehicleRent(startDate: Date.from(year: 2019, month: 07, day: 27)!, endDate: Date.from(year: 2019, month: 07, day: 30)!, vechile: car1, noOfKmDrived: 50.0)

let vr2 = VehicleRent(startDate: Date.from(year: 2020, month: 02, day: 21)!, endDate: Date.from(year: 2020, month: 02, day: 23)!, vechile: b1, noOfKmDrived: 500.0)


//Create Customers
do{
    let c1 = try Customer(id: "C001", firstName: "Cristen", lastName: "Little", gender: .Female, mobileNumber: "6471202489", birthDate: Date.from(year: 1993, month: 01, day: 15)!, emailID: "cristen.little@gmail.com", userName: "Cristen123", password: "pasword", address: "18 Young Street", city: "Toronto")
    c1.addVehicleListRented(vehicleRented: vr1, vehicleIdentificationNumber:vr1.vehicle.vehicleIdentificationNumber )
    dr.addCustomer(customer: c1)
    c1.Display()
}
do{

    let c2 = try Customer(id: "C002", firstName: "Wes", lastName: "Dundon", gender: .Male, mobileNumber: "458369127", birthDate: Date.from(year: 2005, month: 02, day: 20)!, emailID: "wes@gmail.com", userName: "wes45", password: "wes@12345", address: "55 Huntario Street", city: "Brampton")
    
    c2.Display()
}

do{
    let c3 = try Customer(id: "C003", firstName: "Merrick", lastName: "Dondon", gender: .Male, mobileNumber: "6478952146", birthDate: Date.from(year: 1997, month: 05, day: 24)!, emailID: "merrick@gmail.com", userName: "merricl45", password: "merrickD", address: "8,Derry Road", city: "Toronto")
    
    c3.Display()
}

do{
    let c4 = try Customer(id: "C004", firstName: "Samuel", lastName: "Nichol", gender: .Male, mobileNumber: "587963147", birthDate: Date.from(year: 1996, month: 08, day: 08)!, emailID: "samuel@gmail.com", userName: "Samuel_09", password: "samuel09", address: "798,Westwood", city: "Missisagua")
    
    c4.Display()
}
do{
    let c5 =  try Customer(id: "C005", firstName: "Valaria", lastName: "Fitzer", gender: .Female, mobileNumber: "6472589634", birthDate: Date.from(year: 1993, month: 12, day: 24)!, emailID: "valaria@gmail.com", userName: "Valaria_@34", password: "valaria89", address: "303,Darcel Avenue", city: "Oakville")
    c5.Display()
}


dr.DisplayAvailableVehicleToRent()
