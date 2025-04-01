//
//  BackgroundGradientView.swift
//  MarshallsLaw Watch App
//
//  Created by Linda Swanson on 3/31/25.
//

import SwiftUI

struct BackgroundGradientView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(
            colors: [.backgroundTopBlue, .backgroundBottomBlack]),
                       startPoint: .top,
                       endPoint: .bottom)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundGradientView()
}


/*
 // Background Gradient from FoodReportView
 LinearGradient(gradient: Gradient(colors: [Color("BottomBlue"), Color("TopBlack")]), startPoint: .top, endPoint: .bottom)
     .ignoresSafeArea()
     .opacity(0.70)
 */

/*
 // Background Gradient from ContentView landing page
 LinearGradient(gradient: Gradient(colors: [Color("TopBlack"), Color("DeepBlue")]), startPoint: .top, endPoint: .bottom)
     .ignoresSafeArea()
     .opacity(0.99)

 */
