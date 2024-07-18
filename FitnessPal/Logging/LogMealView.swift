//
//  LogMealView.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/17/24.
//

import SwiftUI

struct LogMealView: View {
    @State private var allFood: [FoodInfo] = [FoodInfo(name: "Oats", calories: 200, carbohydrate: 120, protein: 10, fat: 24)]
    
    var body: some View {
        List {
            ForEach(allFood, id: \.id) { food in
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

#Preview {
    LogMealView()
}
