//
//  ContentView.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello")
        
        Circle()
            .stroke(Color.orange, lineWidth: 6)
            .frame(width: 50, height: 50)
            
        
    }
}

#Preview {
    ContentView()
}
