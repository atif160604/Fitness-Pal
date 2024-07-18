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
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack {
                    Text("Toal calories = calories - calories")
                        .foregroundStyle(Color.white)
                    NavigationLink {
                        LogMealView()
                    } label: {
                        MealOverView(meal: breakfast)
                    }
                    
                    NavigationLink {
                        LogMealView()
                    } label: {
                        MealOverView(meal: lunch)
                    }
                    
                    NavigationLink {
                        LogMealView()
                    } label: {
                        MealOverView(meal: dinner)
                    }
                    
                    NavigationLink {
                        LogMealView()
                    } label: {
                        MealOverView(meal: snacks)
                    }
                }
            }
        }
    }
}

#Preview {
    AddFoodView()
}
