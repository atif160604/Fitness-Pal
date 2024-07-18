//
//  ContentView.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var proteinMacro = Macro(name: "Protein", amount: 150, consumed: 20, color: Color.orange)
    @State private var carbohydrateMacro = Macro(name: "Carbohydrate", amount: 100, consumed: 50, color: Color.blue)
    @State private var fatMacro = Macro(name: "Fat", amount: 50, consumed: 60, color: Color.purple)
    
    var body: some View {
        TabView {
            MacroOverView(proteinMacro: proteinMacro, fatMacro: fatMacro, carbohydrateMacro: carbohydrateMacro)
                .tabItem {
                    Label("Overview", systemImage: "pencil")
                }
            Text("Workout")
                .tabItem {
                    Label("Workout", systemImage: "pencil.circle")
                }
            
            AddFoodView()
                .tabItem {
                    Label("Log Meal", systemImage: "pencil")
                }
            
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "pencil.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
