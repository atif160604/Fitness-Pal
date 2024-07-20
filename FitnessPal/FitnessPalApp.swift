//
//  FitnessPalApp.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/7/24.
//

import SwiftUI
import SwiftData

@main
struct FitnessPalApp: App {
    let container: ModelContainer
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(container)
    }
    
    init() {
        let schema = Schema([MealInfo.self, FoodInfo.self])
        let config = ModelConfiguration("MyFood", schema: schema)
        do {
            container = try ModelContainer(for: schema, configurations: config)
        } catch {
            fatalError("could not configure model container")
        }
    }
       
}
