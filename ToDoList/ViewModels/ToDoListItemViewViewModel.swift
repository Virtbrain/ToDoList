//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Alexey Manankov on 29.09.2023.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

/// View model for sibgle to do list view(each row in items list)
class ToDoListItemViewViewModel: ObservableObject {
    
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
