//
//  MacroOverView.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/16/24.
//

import SwiftUI

struct MacroOverView: View {
    var proteinMacro: Macro
    var fatMacro: Macro
    var carbohydrateMacro: Macro
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack {
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

#Preview {
    MacroOverView(proteinMacro: .proteinMacro, fatMacro: .fatMacro, carbohydrateMacro: .carbohydrateMacro)
}
