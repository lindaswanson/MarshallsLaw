//
//  FoodReportView.swift
//  Marshalls Law Watch App
//
//  Created by Floyd Simpson on 3/27/25.
//

import SwiftUI

struct FoodReportView: View {
    var body: some View {
        NavigationStack{
            
            
            ZStack {
                // Background Gradient
                LinearGradient(gradient: Gradient(colors: [Color("BottomBlue"), Color("TopBlack")]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                    .opacity(0.70)
                
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
                        ProgressRow(label: "HEALTHY", percent: 0.50, color: .green)
                        ProgressRow(label: "UNHEALTHY", percent: 0.40, color: .yellow)
                        ProgressRow(label: "SKIPS", percent: 0.10, color: .red)
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
                    Image(systemName: "fork.knife.circle.fill")
                    
                        .foregroundStyle(.greenFork)
                        .font(.system(size: 30))
                }
            }
        }
        }
    }
    
    // Custom Progress Bar Component
    struct ProgressRow: View {
        var label: String
        var percent: Double
        var color: Color
        
        var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Text(label)
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Text("\(Int(percent * 100))%")
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
                
                // Progress Bar
                GeometryReader { geometry in
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 8)
                        
                        RoundedRectangle(cornerRadius: 5)
                            .fill(color)
                            .frame(width: geometry.size.width * CGFloat(percent), height: 8)
                    }
                }
                .frame(height: 8)
            }
            .padding(.top, 5)
        }
    }

    #Preview {
        FoodReportView()
    }
    
