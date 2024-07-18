//
//  LogMealView.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/17/24.
//

import SwiftUI

struct LogMealView: View {
    @State private var allFood: [FoodInfo] = [FoodInfo(name: "Oats", calories: 200, carbohydrate: 40, protein: 25, fat: 10)]
    
    @State private var selectedFood: [FoodInfo] = []
    
    var proteinOverview: Macro
    var carbohydrateOverview: Macro
    var fatOverview: Macro
    
    var foodList: MealInfo
    
    var body: some View {
        List {
            Section("Available items") {
                ForEach(allFood, id: \.id) { food in
                    Button {
                        foodList.food.append(food)
                        selectedFood.append(food)
                        proteinOverview.consumed += food.protein
                        carbohydrateOverview.consumed += food.carbohydrate
                        fatOverview.consumed += food.fat
                    } label: {
                        VStack(alignment: .leading) {
                            Text("\(food.name)")
                            HStack {
                                Text("Carbohydrate: \(food.carbohydrate)")
                                Text("Protein: \(food.protein)")
                                Text("Fat: \(food.fat)")
                            }
                            .font(.caption)
                        }
                    }
                }
            }
            Section("Added items") {
                ForEach(selectedFood, id: \.id) { food in
                    VStack(alignment: .leading) {
                        Text("\(food.name)")
                        HStack {
                            Text("Carbohydrate: \(food.carbohydrate)")
                            Text("Protein: \(food.protein)")
                            Text("Fat: \(food.fat)")
                        }
                        .font(.caption)
                    }
                }
            }
        }
    }
}

#Preview {
    LogMealView(proteinOverview: .proteinMacro , carbohydrateOverview: .carbohydrateMacro, fatOverview: .fatMacro, foodList: MealInfo(name: "Breakfast", food: []))
}
