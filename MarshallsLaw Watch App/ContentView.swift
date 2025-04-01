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
            BackgroundGradientView()
            VStack {
                // Header with Icon and Title
                VStack {
                    Image("MarshallsLawLogo")
                        .resizable()
                        .scaledToFill()
                }
                
                // Buttons for Food and Drink
                VStack {
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
                        //.background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
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
                        //.background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
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
