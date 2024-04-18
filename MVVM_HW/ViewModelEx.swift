//
//  ViewModelEx.swift
//  MVVM_HW
//
//  Created by Luis on 18/4/24.
//

import Foundation

class ViewModelHW : ObservableObject {
    @Published var user = ""
    @Published var password = ""
    
    @Published var users : [User] = []
    
    func registrar(){
        let newUser = User(user: user, password: password)
        users.append(newUser)
        
    }
}
