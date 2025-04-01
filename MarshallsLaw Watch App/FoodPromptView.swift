//
//  FoodPromptView.swift
//  MarshallsLaw Watch App
//
//  Created by Linda Swanson on 4/1/25.
//

import SwiftUI

/*
 enum FoodAnswer: String, CaseIterable {
 case healthy
 case unhealthy
 case nothing
 }
 */

// https://www.hackingwithswift.com/books/ios-swiftui/working-with-identifiable-items-in-swiftui

struct FoodAnswer: Identifiable {
    var id = UUID()
    var name: String
    // setting up to do the increment within the foreach loop
    @State private var value: Int = 0
}

func getFoodAnswer(food: FoodAnswer) -> String? {
    return nil
}

struct FoodPromptView: View {
    var foodOptions: [FoodAnswer] = [
        FoodAnswer(name: "👍 Healthy"),
        FoodAnswer(name: "👎 Unhealthy"),
        FoodAnswer(name: "❌ Nothing")
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundGradientView()
                VStack {
                    Text("Did you eat something?")
                        .font(.subheadline)
                    ScrollView {
                        ForEach(foodOptions) { foodOption in
                            Button(foodOption.name){
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
                    Image(systemName: "fork.knife.circle.fill")
                        .foregroundStyle(.forkKnifeGreen)
                        .font(.system(size: 28))
                }
            }
        }
    }
}


#Preview {
    FoodPromptView()
}
