//
//  EditMacroView.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/9/24.
//

import SwiftUI

struct EditMacroView: View {
    var proteinMacro: Macro
    var fatMacro: Macro
    var carbohydrateMacro: Macro
    
    @State private var proteinAmount = 0
    @State private var fatAmount = 0
    @State private var carbohydrateAmount = 0
    
    var body: some View {
        VStack {
            List {
                Section("How much protein do you want to consume in a day") {
                    TextField("How much protein do you want to consume in a day", value: $proteinAmount, format: .number )
                }
                Section("How much Fat do you want to consume in a day") {
                    TextField("How much protein do you want to consume in a day", value: $fatAmount, format: .number )
                }
                Section("How much Carbohydrates do you want to consume in a day") {
                    TextField("How much protein do you want to consume in a day", value: $carbohydrateAmount, format: .number )
                }
            }
            
            Button("Save") {
                proteinMacro.amount = proteinAmount
                fatMacro.amount = fatAmount
                carbohydrateMacro.amount = carbohydrateAmount
            }
            
        }
    }
}

#Preview {
    EditMacroView(proteinMacro: .proteinMacro, fatMacro: .fatMacro, carbohydrateMacro: .carbohydrateMacro)
}
