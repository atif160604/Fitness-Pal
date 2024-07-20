//
//  MealInfoSample.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/20/24.
//

import Foundation

extension MealInfo {
    static var sampleMeal: [MealInfo] {
        [
            MealInfo(name: "Breakfast", food: [FoodInfo(name: "Oats", calories: 200, carbohydrate: 20, protein: 30, fat: 12)])
        ]
    }
}
