//
//  main.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/10/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

//Function to Read from Json Files
func readCustomerCodable(fileName: String)
{
    let filepPath = Bundle.main.url(forResource: fileName, withExtension: "json")
    
    guard let path = filepPath else {
        print("Invalid File Path found")
        return
    }
    
    guard let data = try? Data(contentsOf: path) else {
        print("Error while reading Data from URL")
        return
    }
    
//    guard let customer = try? JSONSerialization.jsonObject(with: data, options: [])else {
//           print("Error while reading JSON Data from file")
//           return
//        }
    
    do{
    let customers = try JSONDecoder().decode([Customer].self, from: data)
        //print(customers)
        for c in customers
        {
            c.Display()
        }
    }catch {
        print("Error while reading JSON Data from file")
        print(error)

    }
}
print("***********  Read from Json Files  ****************")
//readCustomerCodable(fileName: "CustomerInputData") //Read Json File
print("**************************************************\n\n")


let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd"

//Create Customers
do{
let c1 = try Customer(id: "C001", firstName: "Cristen", lastName: "Little", gender: .Female, mobileNumber: "6471202489", birthDate: formatter.date(from: "2019-01-15")!, emailID: "cristen.little@gmail.com", userName: "Cristen123", password: "pasword", address: "18 Young Street", city: "Toronto")

let c2 = try Customer(id: "C002", firstName: "Wes", lastName: "Dundon", gender: .Male, mobileNumber: "458369127", birthDate: formatter.date(from: "2005-02-12")!, emailID: "wes@gmail.com", userName: "wes45", password: "wes@12345", address: "55 Huntario Street", city: "Brampton")

let c3 = try Customer(id: "C003", firstName: "Merrick", lastName: "Dondon", gender: .Male, mobileNumber: "6478952146", birthDate: formatter.date(from: "1997-05-24")!, emailID: "merrick@gmail.com", userName: "merricl45", password: "merrickD", address: "8,Derry Road", city: "Toronto")

let c4 = try Customer(id: "C004", firstName: "Samuel", lastName: "Nichol", gender: .Male, mobileNumber: "587963147", birthDate: formatter.date(from: "1996-08-08")!, emailID: "samuel@gmail.com", userName: "Samuel_09", password: "samuel09", address: "798,Westwood", city: "Missisagua")
    
    let c5 =  try Customer(id: "C005", firstName: "Valaria", lastName: "Fitzer", gender: .Female, mobileNumber: "6472589634", birthDate: formatter.date(from: "1993-12-24")!, emailID: "valaria@gmail.com", userName: "Valaria_@34", password: "valaria89", address: "303,Darcel Avenue", city: "Oakville")


c1.Display()
    c2.Display()
    c3.Display()
    c4.Display()
    c5.Display()
}

do{
    let d1 = try Driver(id: "D001", firstName: "Zora", lastName: "Ferris", gender: .Female, mobileNumber: "4796672909", birthDate: formatter.date(from: "2020-01-30")!, emailID: "zferris0@disqus.com", userName: "zferris0", password: "EAtVnCuCe6Us", drivingLicenceNumber: "nzQq2Tx5g5HE", isHistroyCleared: true, salary: 127.62)
}

do
{
    let d2 = try Driver(id: "D002", firstName: "Appolonia", lastName: "Cattroll", gender: .Female, mobileNumber: "8983450523", birthDate: formatter.date(from: "2019-03-20")!, emailID: "acattroll1@psu.edu", userName: "acattroll1", password: "x9e6xnkMpBr3", drivingLicenceNumber: "NfL6HThI", isHistroyCleared: true, salary: 179.17)
}

do
{
    let d3 = try Driver(id: "D003", firstName: "Vernice", lastName: "McGougan", gender: .Female, mobileNumber: "4264923681", birthDate: formatter.date(from: "2019-04-12")!, emailID: "vmcgougan2@umn.edu", userName: "vmcgougan2", password: "RE5IOBcVm", drivingLicenceNumber: "xxLTfp9", isHistroyCleared: true, salary: 147.80)
}
