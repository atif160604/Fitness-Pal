//
//  AddMacroView.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/9/24.
//

import SwiftUI

struct AddMacroView: View {
    var proteinMacro: Macro
    var fatMacro: Macro
    var carbohydrateMacro: Macro
    
    @Environment(\.dismiss) var dismiss
    
    @State private var proteinAmount = 0
    @State private var fatAmount = 0
    @State private var carbohydrateAmount = 0
    
    var body: some View {
        VStack {
            List {
                Section("Add quantity") {
                    HStack() {
                        Text("Protein")
                        Spacer()
                        TextField("amount", value: $proteinAmount, format: .number)
                    }
                    HStack() {
                        Text("Fat")
                        Spacer()
                        TextField("amount", value: $fatAmount, format: .number)
                    }
                    HStack() {
                        Text("Carbohydrate")
                        Spacer()
                        TextField("amount", value: $carbohydrateAmount, format: .number)
                    }
                }
            }
        }
        Button("Save") {
            proteinMacro.consumed += proteinAmount
            fatMacro.consumed += fatAmount
            carbohydrateMacro.consumed += carbohydrateAmount
            dismiss()
        }
    }
}

#Preview {
    AddMacroView(proteinMacro: .proteinMacro, fatMacro: .fatMacro, carbohydrateMacro: .carbohydrateMacro)
}
