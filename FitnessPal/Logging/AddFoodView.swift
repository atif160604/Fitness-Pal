//
//  AddFoodView.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/12/24.
//

import SwiftUI

struct AddFoodView: View {
    @State private var breakfast = MealInfo(name: "Breakfast", food: [])
    @State private var lunch = MealInfo(name: "Lunch", food: [])
    @State private var dinner = MealInfo(name: "Dinner", food: [])
    @State private var snacks = MealInfo(name: "Snacks", food: [])
    
    var proteinOverview: Macro
    var carbohydrateOverview: Macro
    var fatOverview: Macro
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack {
                    Text("Toal calories = calories - calories")
                        .foregroundStyle(Color.white)
                    NavigationLink {
                        LogMealView(proteinOverview: proteinOverview, carbohydrateOverview: carbohydrateOverview, fatOverview: fatOverview, foodList: breakfast)
                    } label: {
                        MealOverView(meal: breakfast)
                    }
                    
                    NavigationLink {
                        LogMealView(proteinOverview: proteinOverview, carbohydrateOverview: carbohydrateOverview, fatOverview: fatOverview, foodList: lunch)
                    } label: {
                        MealOverView(meal: lunch)
                    }
                    
                    NavigationLink {
                        LogMealView(proteinOverview: proteinOverview, carbohydrateOverview: carbohydrateOverview, fatOverview: fatOverview, foodList: dinner)
                    } label: {
                        MealOverView(meal: dinner)
                    }
                    
                    NavigationLink {
                        LogMealView(proteinOverview: proteinOverview, carbohydrateOverview: carbohydrateOverview, fatOverview: fatOverview, foodList: snacks)
                    } label: {
                        MealOverView(meal: snacks)
                    }
                }
            }
        }
    }
}

#Preview {
    AddFoodView(proteinOverview: .proteinMacro, carbohydrateOverview: .carbohydrateMacro, fatOverview: .fatMacro)
}
