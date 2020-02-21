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
var c1 = Customer(id: "C001", firstName: "Cristen", lastName: "Little", gender: .Female, mobileNumber: "6471202489", birthDate: formatter.date(from: "2019-01-15")!, emailID: "cristen.little@gmail.com", userName: "Cristen123", password: "pasword", address: "18 Young Street", city: "Toronto")

 


c1.Display()
