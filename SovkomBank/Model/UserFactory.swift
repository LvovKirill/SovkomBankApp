//
//  UserFactory.swift
//  SovkomBank
//
//  Created by Kirill on 31.10.2023.
//

import Foundation

class UserFactory{
    
    var userData: [User] = [
        
        User(userName: "Цой Константин", email: "kostya@mail.ru", password: "1234", experience: 2, taskCount: 93, rating: 4.0, coin: 123, image: "KostyaAva"),
        
        User(userName: "Нурлан Сабуров", email: "nurik@mail.ru", password: "111", experience: 1, taskCount: 3, rating: 5.0, coin: 6, image: "saburovAva"),
        
        
        ]
    
    
    
}

struct User: Identifiable{
    var id = UUID()
    
    var userName: String
    var email: String
    var password: String
    var experience: Int
    var taskCount: Int
    var rating: Double
    var coin: Double
    var image: String
}
