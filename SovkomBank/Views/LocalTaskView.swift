//
//  LocalTaskView.swift
//  SovkomBank
//
//  Created by Kirill on 31.10.2023.
//

import SwiftUI

struct LocalTaskView: View {
    var body: some View {
        
        let taskViewModel = TaskViewModel()
        
        List(){
            Section("В процессе", content: {
                ForEach(taskViewModel.getTaskInProcess()){
                    task in LocalTaskRow(task: task)
                        .listRowSeparator(.hidden)
                }
            })
            .font(.system(size: 20))
            
        }
        .listStyle(.plain)
        .padding(.top, -8)
        
        
    }
}


struct LocalTaskRow: View{
    var taskViewModel = TaskViewModel()
    var task: Task
    var body: some View {
        ZStack(alignment: .leading){
            Color.white
            
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: taskViewModel.getImageNameForTask(task: task))
                            .foregroundColor(taskViewModel.getColorTask(task: task))
                        Text(task.taskName)
                            .foregroundColor(.black)
                            .font(.system(size: 18))
                    }
                    .padding(.leading, 20)
                    .padding(.top, 10)
                    
                    HStack(alignment: .top){
                        Text("Адрес:      ")
                            .foregroundColor(.gray)
                            .font(.system(size: 13))
                        Text(task.address)
                            .foregroundColor(.gray)
                            .font(.system(size: 13))
                            .padding(.trailing, 100)
                    }
                    .padding(.leading, 20)
                    .padding(.top, 5)
                    .padding(.bottom, 10)
                    
                    
                    HStack(alignment: .top){
                        Text("Описание:")
                            .foregroundColor(.gray)
                            .font(.system(size: 13))
                        Text(task.discription)
                            .foregroundColor(.gray)
                            .font(.system(size: 13))
                            .padding(.trailing, 100)
                            .lineLimit(5)
                            .frame(height: 50)
                    }
                    .padding(.leading, 20)
                    .padding(.top, -5)
                    .padding(.bottom, 10)
                    
                    
                    
                }
            
            ZStack{
                VStack{
                    HStack{
                        Image(systemName: "diamond.circle")
                            .foregroundColor(.blue)
                            .frame(width: 32.0, height: 32.0)
                        Text(String(task.coin))
                            .padding(.leading, -10)
                            .foregroundColor(.blue)
                            .font(.system(size: 15))
                            .bold()
                    }
                    
                    HStack{
                        Button(action: {
                            
                        }){
                            Text("взять")
                        }.buttonStyle(.borderedProminent)
                            .foregroundColor(.white)
                            .tint(.green)
                    }
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
            .padding(.trailing, 10)
            

        }.clipShape(RoundedRectangle(cornerSize: CGSize(width: 15.0, height: 15.0)))
            .foregroundColor(Color.white)
            .shadow(color: Color.gray, radius: 3.0)
            .frame(height: 150)
    }
}




struct LocalTaskView_Previews: PreviewProvider {
    static var previews: some View {
        LocalTaskView()
    }
}
