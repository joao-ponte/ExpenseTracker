//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by João Ponte on 09/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    // Mark: Title
                    Text("Overview")
                        .font(.title2)
                        .bold()
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .background(AppColor.background)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // Mark: Notification Icon
                ToolbarItem {
                    Image(systemName: "bell.badge")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(AppColor.icon, .primary)
                    
                }
                
            }
        }
        .navigationViewStyle(.stack)
        
    }
}

#Preview {
    ContentView()
}
