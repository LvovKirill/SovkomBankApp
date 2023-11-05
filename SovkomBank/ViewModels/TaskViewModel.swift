//
//  TaskViewModel.swift
//  SovkomBank
//
//  Created by Kirill on 30.10.2023.
//

import Foundation
import SwiftUI

class TaskViewModel{
    var taskFactory = TaskFactory()
    

    func getTaskInProcess() -> [Task]{
        return taskFactory.taskData
    }
    
    func getColorTask(task: Task) -> Color{
        switch(task.taskName){
        case "Доставка карты":
            return Color.purple
        case "Устранение неполадок ПК":
            return Color.green
        case "Консультация":
            return Color.orange
        case "Встреча с клиентом":
            return Color.pink
        case "Анкетирование":
            return Color.blue
        case "Работа с банкоматом":
            return Color.mint
        default:
            return Color.blue
        }
    }
    
    func getImageNameForTask(task: Task) -> String{
        switch(task.taskName){
        case "Доставка карты":
            return "creditcard.fill"
        case "Устранение неполадок ПК":
            return "desktopcomputer"
        case "Консультация":
            return "person.fill.questionmark.rtl"
        case "Встреча с клиентом":
            return "person.and.person.fill"
        case "Анкетирование":
            return "list.bullet.clipboard.fill"
        case "Работа с банкоматом":
            return "banknote.fill"
        default:
            return "list.bullet.clipboard.fill"
        }
    }
    
}
    
struct task: Identifiable{
    var id = UUID()
    
    let taskName: String
}
