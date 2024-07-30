//
//  ContentView.swift
//  Bookworm
//
//  Created by Adam Elfsborg on 2024-07-30.
//

import SwiftUI


struct ContentView: View {
    @AppStorage("notes") private var notes = ""
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $notes)
                TextField("Enter your notes", text: $notes, axis: .vertical)
                    .textFieldStyle(.roundedBorder)
            }
            .navigationTitle("Notes")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
