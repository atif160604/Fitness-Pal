//
//  FoodInfo.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/18/24.
//

import Foundation

struct FoodInfo: Identifiable {
    let id = UUID()
    var name: String
    var calories: Int
    var carbohydrate: Int
    var protein: Int
    var fat: Int
}
