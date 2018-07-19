//
//  wage-model.swift
//  window-shopper
//
//  Created by training on 19.07.2018.
//  Copyright © 2018 Developers. All rights reserved.
//

import Foundation

class WageModel {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        // for Unit tests to fail
        //return Int(round(price/wage))
        // for Unit tests to pass
        return Int( ceil( price / wage ) )
    }
}
