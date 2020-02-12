//
//  Bus.swift
//  SWIFTVehicle Renting System
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Bus:Vehicle
{
    var busType:String
    var isServiceAvailable:Bool
    var   isWifiAvailable:Bool
    
    //Initializer
    init(busType:String,isServiceAvailable:Bool,isWIfiAvailable:Bool)
    {
        self.busType=busType
        self.isWifiAvailable=isWIfiAvailable
        self.isServiceAvailable=isServiceAvailable
    }
}