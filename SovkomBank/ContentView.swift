//
//  ContentView.swift
//  SovkomBank
//
//  Created by Kirill on 29.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var status = UserDefaults.standard.bool(forKey: "enteranceStatus") as? Bool ?? false
    
    @State static var isShowedEntranceView = false
    
    var body: some View {
        

//        if status{
            
            TabView{
                TaskMapView().tabItem {
                    Image(systemName: "map.fill")
                    Text("Карта")
                    
                }
                
                TaskView().tabItem {
                    Image(systemName: "list.clipboard")
                    Text("Задачи")
                    
                }
                
                ProfileView().tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Профиль")
                    
                }
            }
            
//        }else{
//            EntranceView()
//        }
        
        
        }

        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
                ContentView()

        }
    }
    
