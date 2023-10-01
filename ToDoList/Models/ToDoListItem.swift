//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by Alexey Manankov on 29.09.2023.
//

import Foundation

struct ToDoListItem: Codable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
