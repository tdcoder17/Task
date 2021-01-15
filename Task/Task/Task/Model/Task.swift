//
//  Task.swift
//  Task
//
//  Created by Theo Davis on 1/13/21.
//

import Foundation

class Task: Codable {
    
    var name: String
    var notes: String
    var dueDate: Date
    var isComplete: Bool
    
    init(name: String, notes: String, dueDate: Date = Date(), isComplete: Bool) {
        self.name = name
        self.notes = notes
        self.dueDate = dueDate
        self.isComplete = isComplete
    }
}// END OF CLASS
