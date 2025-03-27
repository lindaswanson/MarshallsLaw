//
//  ContentView.swift
//  Marshalls Law Watch App
//
//  Created by Floyd Simpson on 3/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background Gradient
            LinearGradient(gradient: Gradient(colors: [Color("TopBlack"), Color("DeepBlue")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .opacity(0.99)
            
            VStack(spacing: 12) {
                // Header with Icon and Title
                VStack {
                    Image(systemName: "MarshallsLawLogo")
                        .font(.system(size: 40))
                        .foregroundColor(.blue)
                    
                    Text("MARSHALL’S LAW")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }
                
                // Buttons for Food and Drink
                VStack(spacing: 10) {
                    Button(action: {
                        print("Food button tapped")
                    }) {
                        HStack {
                            Text("Food 🍲")
                                .font(.title3)
                                .fontWeight(.medium)
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
                    }
                    
                    Button(action: {
                        print("Drink button tapped")
                    }) {
                        HStack {
                            Text("Drink 💧")
                                .font(.title3)
                                .fontWeight(.medium)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
                    }
                }
                .padding(.horizontal, 10)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
