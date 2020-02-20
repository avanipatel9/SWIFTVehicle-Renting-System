//
//  main.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/10/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

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
    
    guard let customer = try? JSONSerialization.jsonObject(with: data, options: [])else {
           print("Error while reading JSON Data from file")
           return
        }
    
//    guard let customer = try? JSONDecoder().decode(Customer.self, from: data)else {
//        print("Error while reading JSON Data from file")
//        return
//    }
    
    print(customer)
}
