//
//  LoginView.swift
//  ToDoList
//
//  Created by Alexey Manankov on 29.09.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView()
                
                //Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button {
                        //Attempt log in
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(Color.blue)
                            
                            Text("Log In")
                                .foregroundStyle(Color.white)
                                .bold()
                        }
                    }
                }
                //Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                    .padding(.bottom, 50)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
