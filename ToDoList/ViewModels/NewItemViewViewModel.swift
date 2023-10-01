//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Alexey Manankov on 29.09.2023.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init() {}
    
    func save() {
        //Save
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else { //-24 hours beacuse time is 00:00:00 on now date
            return false
        }
        
        return true
    }
}
