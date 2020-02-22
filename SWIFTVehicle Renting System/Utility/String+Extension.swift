//
//  String+Extension.swift
//  SWIFTVehicle Renting System
//
//  Created by Avani Patel on 2/20/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

extension String
{
    func isValidEmail() -> Bool
    {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    func isValidPhone() -> Bool
    {
        let PHONE_REGEX = "^(?:\\+?1[-.●]?)?\\(?([0-9]{3})\\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        return phoneTest.evaluate(with: self)
    }
    
    func encryptpass(password : String) -> String
    {
        let op  = password
        var characters = Array(op)
        for char in characters
        {
            char.asciiValue! + 5;
            characters.append(char)
        }
        return String(characters)
    }
    
    func decryptPass(password : String) -> String
    {
        
    }
}
