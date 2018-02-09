//
//  Wage.swift
//  window-shopper
//
//  Created by Greg Davidson on 2/8/18.
//  Copyright © 2018 Greg Davidson. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        
        return Int(ceil(price / wage))
        
    }
    
}
