//
//  TaskFactory.swift
//  SovkomBank
//
//  Created by Kirill on 30.10.2023.
//

import Foundation

class TaskFactory{
    
    var taskData: [Task] = [
    Task(
        taskName: "Доставка карты",
        discription: "Требуется осуществить доставку пластиковой карты клиенту. Карта может быть связана с различными видами услуг или программ лояльности, и ее получение является важным этапом для клиента.",
        address: "Москва, улица Шверника, 17к2",
        latitude: 55.69239237782198,
        longitude: 37.59358708886715,
        type: .card,
        coin: 2,
        done: false
    ),
    
    Task(
        taskName: "Анкетирование",
        discription: "Требуется осуществить доставку пластиковой карты клиенту. Карта может быть связана с различными видами услуг или программ лояльности, и ее получение является важным этапом для клиента.",
        address: "Москва, 1-я Дубровская улица, 13Ас1",
        latitude: 55.7223419969992,
        longitude: 37.67426793603513,
        type: .card,
        coin: 1,
        done: false
    ),
    
    Task(
        taskName: "Консультация",
        discription: "Требуется осуществить доставку пластиковой карты клиенту. Карта может быть связана с различными видами услуг или программ лояльности, и ее получение является важным этапом для клиента.",
        address: "Москва, Архангельский переулок, 6с1",
        latitude: 55.76102008469370,
        longitude: 37.63824333406014,
        type: .card,
        coin: 3,
        done: false
    ),
    
    Task(
        taskName: "Анкетирование",
        discription: "Требуется осуществить доставку пластиковой карты клиенту. Карта может быть связана с различными видами услуг или программ лояльности, и ее получение является важным этапом для клиента.",
        address: "Москва, Малая Бронная улица",
        latitude: 55.76402047864814,
        longitude: 37.59292473054452,
        type: .card,
        coin: 2,
        done: false
    ),
    
    Task(
        taskName: "Анкетирование",
        discription: "Требуется осуществить доставку пластиковой карты клиенту. Карта может быть связана с различными видами услуг или программ лояльности, и ее получение является важным этапом для клиента.",
        address: "Москва, Еропкинский переулок, 11",
        latitude: 55.74030136232732,
        longitude: 37.59189476228281,
        type: .card,
        coin: 2,
        done: false
    ),
    
    Task(
        taskName: "Работа с банкоматом",
        discription: "Требуется осуществить доставку пластиковой карты клиенту. Карта может быть связана с различными видами услуг или программ лояльности, и ее получение является важным этапом для клиента.",
        address: "Москва, Новосущёвская улица, 3с7",
        latitude: 55.781921235469056,
        longitude: 37.60494102693126,
        type: .card,
        coin: 2,
        done: false
    ),
    
    
    ]
    
    
    
    
    func getTasksByClassName(className: String) -> [Task]{
        
        var taskDataByClassName: [Task] = []
            
        for task in taskData {
            if(task.taskName == className){
                taskDataByClassName.append(task)
            }
        }
        
        return taskDataByClassName
    }
    
    
}

enum TypeTask{
    case card
    case t
}


struct Task: Identifiable{
    var id = UUID()
    
    var taskName: String
    var discription: String
    var address: String
    var latitude: Double
    var longitude: Double
    var type: TypeTask
    var coin: Int
    var done: Bool
}
