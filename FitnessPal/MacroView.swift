//
//  MacroView.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/8/24.
//

import SwiftUI

struct MacroView: View {
    var macro: Macro
    
    var body: some View {
        VStack {
            Text(macro.name)
            
            VStack {
                Text("\(macro.consumed)")
                    .font(.headline)
                
                Text("/\(macro.amount)")
                    .foregroundStyle(.secondary)
            }
                .frame(width: 75, height: 75, alignment: .center)
                .padding()
                .overlay(
                    ZStack {
                        // first circle to create the gray background
                        Circle()
                            .size(width: 75, height: 75)
                            .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 10))
                            .padding()
                        
                        // Second circle to overlay color and to indicate how much has been consumed
                        Circle()
                            .size(width: 75, height: 75)
                            .trim(from: 0, to: 0.5)
                            .stroke(Color.blue, style: StrokeStyle(lineWidth: 10))
                            .padding()
                    }
                )
            Text("\(macro.remaining)g left")
        }
    }
}

#Preview {
    MacroView(macro: Macro(name: "Protein", amount: 50, consumed: 10))
}
