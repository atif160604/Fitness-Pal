//
//  Macro.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/8/24.
//

import Foundation

struct Macro {
    var name: String
    var amount: Int
    var consumed: Int
    
    var remaining: Int {
        amount - consumed
    }
}
