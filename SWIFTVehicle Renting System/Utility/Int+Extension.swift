//
//  Int+Extension.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/22/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

extension Int
{
    func days() -> String
    {
        let s = String.init(format: "%d Days", self)
        return s
    }
}
