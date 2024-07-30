//
//  ContentView.swift
//  Bookworm
//
//  Created by Adam Elfsborg on 2024-07-30.
//

import SwiftData
import SwiftUI


struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var students: [Student]
    var body: some View {
        NavigationStack {
            List(students) { student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add student", action: addStudent)
            }
        }
    }
    
    func addStudent() {
        let firstNames = ["Harry", "Hermione", "Ron", "Rubeus"]
        let lastNames = ["Potter", "Granger", "Weasley", "Hagrid"]
        
        let randomFullName = "\(firstNames.randomElement()!) \(lastNames.randomElement()!)"
        
        
        let student = Student(id: UUID(), name: randomFullName)
        
        modelContext.insert(student)
    }
}

#Preview {
    ContentView()
}
