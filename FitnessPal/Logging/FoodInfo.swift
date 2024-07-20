//
//  FoodInfo.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/18/24.
//

import Foundation
import SwiftData

@Model
class FoodInfo: Identifiable {
    let id = UUID()
    var name: String
    var calories: Int
    var carbohydrate: Int
    var protein: Int
    var fat: Int
    
    init(name: String, calories: Int, carbohydrate: Int, protein: Int, fat: Int) {
        self.name = name
        self.calories = calories
        self.carbohydrate = carbohydrate
        self.protein = protein
        self.fat = fat
    }
}
