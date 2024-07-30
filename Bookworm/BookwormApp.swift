//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Adam Elfsborg on 2024-07-30.
//

import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Student.self)
    }
}
