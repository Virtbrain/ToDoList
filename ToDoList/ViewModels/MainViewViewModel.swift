//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Alexey Manankov on 29.09.2023.
//

import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject {
    
    @Published var cureentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.cureentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
