//
//  ProgressRowView.swift
//  MarshallsLaw Watch App
//
//  Created by Linda Swanson on 4/1/25.
//

import SwiftUI

// Custom Progress Bar Component
struct ProgressRowView: View {
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
