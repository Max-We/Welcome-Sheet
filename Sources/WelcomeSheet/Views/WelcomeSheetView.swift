//
//  WelcomeSheetView.swift
//  
//
//  Created by Jakub Florek on 27/11/2021.
//

import SwiftUI

struct WelcomeSheetView: View {
    var pages: [WelcomeSheetPage]
    
    var body: some View {
        NavigationView {
            if let firstPage = pages.first {
                WelcomeSheetPageView(page: firstPage, restPages: pages.filter({ $0.id != firstPage.id }))
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
