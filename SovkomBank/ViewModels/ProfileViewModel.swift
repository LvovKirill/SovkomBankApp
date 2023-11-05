//
//  ProfileViewModel.swift
//  SovkomBank
//
//  Created by Kirill on 30.10.2023.
//

import Foundation

class ProfileViewModel{
    var data = [
    executionActivity(countTask: 1, numberOfDay: "пн"),
    executionActivity(countTask: 3, numberOfDay: "вт"),
    executionActivity(countTask: 2, numberOfDay: "ср"),
    executionActivity(countTask: 5, numberOfDay: "чт"),
    executionActivity(countTask: 8, numberOfDay: "пт"),
    executionActivity(countTask: 6, numberOfDay: "сб"),
    executionActivity(countTask: 1, numberOfDay: "вс"),
    ]
    
    
    
}

struct executionActivity: Identifiable{
    var id = UUID()
    
    let countTask: Int
    let numberOfDay: String
    var animate: Bool = true
}
