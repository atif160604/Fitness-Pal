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
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray.opacity(0.1)
                    .ignoresSafeArea()
                NavigationLink {
                    EditMacroView(proteinMacro: proteinMacro, fatMacro: fatMacro, carbohydrateMacro: carbohydrateMacro)
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                        VStack(alignment: .leading) {
                            Text("Macros")
                                .foregroundStyle(.black)
                                .font(.largeTitle)
                                .padding()
                            
                            HStack {
                                MacroView(macro: carbohydrateMacro)
                                MacroView(macro: fatMacro)
                                MacroView(macro: proteinMacro)
                            }
                            .padding()
                        }
                    }
                    .frame(width: 250, height: 250)
                }
                .toolbar {
                    Button("Add", systemImage: "plus") {
                        showingSheet = true
                    }
                }
                .sheet(isPresented: $showingSheet) {
                    AddMacroView(proteinMacro: proteinMacro, fatMacro: fatMacro, carbohydrateMacro: carbohydrateMacro)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
