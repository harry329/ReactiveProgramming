//
//  ContentView.swift
//  Shared
//
//  Created by Harsimran Singh on 2/28/23.
//

import SwiftUI

struct Counter: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("You clicked \(count) times")
            Button(action: { count += 1 }) {
                Text("Click me")
            }
        }
    }
}
