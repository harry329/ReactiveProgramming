//
//  ContentView.swift
//  Shared
//
//  Created by Harsimran Singh on 2/21/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            MyScreen()
    }
}


struct MyScreen: View {
    var body: some View {
        VStack(alignment: .leading) {
            // Your screen content goes here
            Text("Showing FAB")
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .center
          )
        .overlay(
            FloatingActionButton(
                action: {
                    // Handle FAB click
                },
                label: {
                    Image(systemName: "plus")
                }
            )
            .padding(16)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(28)
            .shadow(radius: 4)
            .padding(.trailing, 16)
            .padding(.bottom, 16),
            alignment: .bottomTrailing
        )
    }
}

struct FloatingActionButton: View {
    let action: () -> Void
    let label: () -> Image
    
    var body: some View {
        Button(action: action) {
            label()
        }
    }
}
