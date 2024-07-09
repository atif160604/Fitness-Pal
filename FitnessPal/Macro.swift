//
//  Macro.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/8/24.
//

import Foundation
import SwiftUI

struct Macro {
    var name: String
    var amount: Int
    var consumed: Int
    var color: Color
    
    var percent: Double {
        return Double(consumed) / Double(amount)
    }
    
    var remaining: Int {
        amount - consumed
    }
}
