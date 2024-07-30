//
//  Student.swift
//  Bookworm
//
//  Created by Adam Elfsborg on 2024-07-30.
//
import SwiftData
import Foundation

@Model
class Student {
    var id: UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
