//
//  DrinkPromptView.swift
//  MarshallsLaw Watch App
//
//  Created by Linda Swanson on 3/24/25.
//

import SwiftUI

/*
 enum DrinkAnswer: String, CaseIterable {
 case healthy
 case unhealthy
 case nothing
 }
 */

// https://www.hackingwithswift.com/books/ios-swiftui/working-with-identifiable-items-in-swiftui

struct DrinkAnswer: Identifiable {
    var id = UUID()
    var name: String
    // setting up to do the increment within the foreach loop
    @State private var value: Int = 0
}

func getDrinkAnswer(drink: DrinkAnswer) -> String? {
    return nil
}

struct DrinkPromptView: View {
    var drinkOptions: [DrinkAnswer] = [
        DrinkAnswer(name: "👍 Healthy"),
        DrinkAnswer(name: "👎 Unhealthy"),
        DrinkAnswer(name: "❌ Nothing")
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(
                    colors: [.backgroundTopBlue, .backgroundBottomBlack]),
                               startPoint: .top,
                               endPoint: .bottom)
                .ignoresSafeArea()
                VStack {
                    Text("Did you drink something?")
                        .font(.subheadline)
                    ScrollView {
                        ForEach(drinkOptions) { drinkOption in
                            Button(drinkOption.name){
                                // store selection
                                // increment value
                                // navigate to confirmation view
                            }
                        }
                    }
                }
            }
            .navigationTitle {
                Text("Marshall's Law")
                    .foregroundColor(.appNameBlue)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "waterbottle.fill")
                        .foregroundStyle(.blueWaterBottle)
                        .font(.system(size: 28))
                }
            }
        }
    }
}


#Preview {
    DrinkPromptView()
}
