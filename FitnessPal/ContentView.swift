//
//  ContentView.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.gray.opacity(0.1)
                .ignoresSafeArea()
            
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                
                HStack {
                    MacroView(macro: Macro(name: "Protein", amount: 100, consumed: 50, color: Color.blue))
                    MacroView(macro: Macro(name: "Fat", amount: 50, consumed: 10, color: Color.purple))
                    MacroView(macro: Macro(name: "Protein", amount: 150, consumed: 20, color: Color.orange))
                }
            }
            .frame(width: 250, height: 250)
        }
    }
}

#Preview {
    ContentView()
}
