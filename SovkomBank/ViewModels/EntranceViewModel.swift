//
//  EntranceViewModel.swift
//  SovkomBank
//
//  Created by Kirill on 31.10.2023.
//

import Foundation

class EntranceViewModel{
    var userFactory = UserFactory()
    
    func searchUser(email: String, password: String) -> User?{
        for user in userFactory.userData{
            if(user.email == email && user.password == password){
                UserDefaults.standard.set(password, forKey: "password")
                UserDefaults.standard.set(email, forKey: "email")
                UserDefaults.standard.set(true, forKey: "enteranceStatus")
                return user
            }
        }
        return nil
    }
}
