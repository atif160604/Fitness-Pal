//
//  MealOverView.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/18/24.
//

import SwiftUI

struct MealOverView: View {
    var meal: MealInfo
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 350, height: 150)
                .foregroundStyle(Color.white)
            
            HStack {
                ZStack {
                    Circle()
                        .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 10))
                        .frame(width: 100, height: 100)
                        .padding()
                    
                    if (meal.totalFat + meal.totalProtein + meal.totalCarbohydrate) > 0 {
                        // Carbohydrate Circle
                        Circle()
                            .trim(from: 0, to: meal.carbPercent)
                            .stroke(Color.red, style: StrokeStyle(lineWidth: 10))
                            .rotationEffect(.init(degrees: -90))
                            .frame(width: 100, height: 100)
                            .padding()
                        
                        // Protein Circle
                        Circle()
                            .trim(from: meal.carbPercent, to: meal.proteinPercent)
                            .stroke(Color.yellow, style: StrokeStyle(lineWidth: 10))
                            .rotationEffect(.init(degrees: -90))
                            .frame(width: 100, height: 100)
                            .padding()
                        
                        // Fat Circle
                        Circle()
                            .trim(from: meal.proteinPercent, to: meal.fatPercent)
                            .stroke(Color.blue, style: StrokeStyle(lineWidth: 10))
                            .rotationEffect(.init(degrees: -90))
                            .frame(width: 100, height: 100)
                            .padding()
                    }
                }
                .padding(.horizontal)
                VStack(alignment: .leading ,spacing: 20) {
                    Text("Carbs: \(meal.totalCarbohydrate)")
                    Text("Protein: \(meal.totalProtein)")
                    Text("Fat: \(meal.totalFat)")
                }
            }
        }
    }
}

#Preview {
    MealOverView(meal: MealInfo(name: "Breakfast", food: []))
}
