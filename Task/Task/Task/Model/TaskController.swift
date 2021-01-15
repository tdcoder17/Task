//
//  TaskController.swift
//  Task
//
//  Created by Theo Davis on 1/13/21.
//

import Foundation

class TaskController {
    
    static let shared = TaskController()
    var task: [Task] = []
    
    //MARK: - CRUD
    func createTaskWith(name: String, notes: String?, dueDate: Date?) {
        let createTask = Task (name: name, notes: notes, dueDate: Date())
    }
    
    func update(task: Task, name: String, notes: String?, dueDate: Date?) {
        
    }
    
    func toggleIsComplete(task: Task) {
        
    }
    
    func delete(task: Task) {
        
    }
    
    //MARK: - Persistence
    
    //fileURL
    func fileURL() -> URL {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let fileURL = urls[0].appendingPathComponent("Task.json")
        return fileURL
    }
    
    //save
    func saveToPersistenceStore() {
        do {
            let data = try JSONEncoder().encode(task)
            try data.write(to: fileURL())
        } catch {
            print(error)
            print(error.localizedDescription)
        }
        
    }
    //load
    func loadFromPersistanceStore() {
        do {
            let data = try Data(contentsOf: fileURL())
            let recievedTasks = try JSONDecoder().decode([Task].self, from: data)
            self.task = recievedTasks
        } catch {
            print(error)
            print(error.localizedDescription)
        }
    }
    
}//END OF CLASS
