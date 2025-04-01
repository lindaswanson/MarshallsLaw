//
//  DrinkReportView.swift
//  Marshalls Law Watch App
//
//  Created by Floyd Simpson on 4/1/25.
//

import SwiftUI

struct DrinkReportView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundGradientView()
                
                VStack {
                    // Header Section
//                    HStack {
//                        Image(systemName: "fork.knife.circle.fill")
//                            .frame(width: 4.282, height: -88.605)
//                            .font(.system(size: 30))
//                            .foregroundColor(Color("GreenFork"))
//                            .padding()
//                        //  .padding(.bottom, 50.304)
//                        
//                        
//                        
//                        Spacer()
//                        
//                        Text("Today")
//                            .font(.footnote)
//                            .fontWeight(.semibold)
//                            .foregroundColor(.white)
//                        // .padding([.bottom, .trailing], 54.881)
//                        
//                    }
//                    //]Spacer()
                   // .padding(.horizontal)
                    
                    // Progress Bars Section
                    VStack(spacing: 12) {
                        ProgressRowView(label: "HEALTHY", percent: 0.50, color: .green)
                        ProgressRowView(label: "UNHEALTHY", percent: 0.40, color: .yellow)
                        ProgressRowView(label: "SKIPS", percent: 0.10, color: .red)
                        //  .padding(.top, 10)
                    }
                    //  .padding(.top, 10)
                    
                    Spacer()
                    
                    // Page Indicator Dots
                    HStack(spacing: 4) {
                        Circle().fill(Color.white).frame(width: 6, height: 6)
                        Circle().fill(Color.gray).frame(width: 6, height: 6)
                        
                    }
                    // .padding(.bottom, 50.304)
                }
                .padding()
                // .padding(.bottom, 7.912)
            }
            .navigationTitle("Today")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "waterbottle.fill")
                    
                        .foregroundStyle(.waterBottleBlue)
                        .font(.system(size: 30))
                }
            }
        }
    }
}
    

#Preview {
    DrinkReportView()
}
