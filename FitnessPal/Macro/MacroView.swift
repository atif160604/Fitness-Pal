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
        VStack(alignment: .center) {
            Text(macro.name)
                .foregroundStyle(macro.color)
            
            VStack {
                Text("\(macro.consumed)")
                    .font(.headline)
                    .foregroundStyle(.black)
                
                Text("/\(macro.amount)")
                    .foregroundStyle(.secondary)
            }
                .frame(width: 75, height: 75)
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
                            .trim(from: 0, to: macro.percent)
                            .stroke(macro.color, style: StrokeStyle(lineWidth: 10))
                            .rotationEffect(.init(degrees: -90))
                            .padding()
                    }
                )
            Text("\(macro.remaining)g \(macro.overAte ? "excess" : "left")")
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    MacroView(macro: Macro(name: "Protein", amount: 100, consumed: 50, color: Color.blue))
}
