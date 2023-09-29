//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Alexey Manankov on 29.09.2023.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListVIewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack{
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    //Action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
