//
//  Wage.swift
//  window-shopper
//
//  Created by Devodriq Roberts on 9/18/18.
//  Copyright © 2018 Devodriq Roberts. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
