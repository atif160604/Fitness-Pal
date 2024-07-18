//
//  MealInfo.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/18/24.
//

import Foundation

@Observable
class MealInfo {
    var name: String
    var food: [FoodInfo]
    
    var totalCarbohydrate: Int {
        return food.reduce(0, {$0 + $1.carbohydrate})
    }
    
    var totalProtein: Int {
        return food.reduce(0, {$0 + $1.protein})
    }
    
    var totalFat: Int {
        return food.reduce(0, {$0 + $1.fat})
    }
    
    var totalCalories: Int {
        return food.reduce(0, {$0 + $1.calories})
    }
    
    var carbPercent: Double {
        return Double(totalCarbohydrate) / (Double(totalFat) + Double(totalProtein) + Double(totalCarbohydrate))
    }
    
    var proteinPercent: Double {
        return (Double(totalProtein) / (Double(totalFat) + Double(totalProtein) + Double(totalCarbohydrate))) + carbPercent
    }
    
    var fatPercent: Double {
        return (Double(totalFat) / (Double(totalFat) + Double(totalProtein) + Double(totalCarbohydrate))) + proteinPercent
    }
    
    init(name: String, food: [FoodInfo]) {
        self.name = name
        self.food = food
    }
    
}
