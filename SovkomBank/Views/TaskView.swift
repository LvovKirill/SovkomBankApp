//
//  TaskView.swift
//  SovkomBank
//
//  Created by Kirill on 29.10.2023.
//

import SwiftUI

struct TaskView: View {
    
    let taskViewModel = TaskViewModel()
    @State private var animatedGradient = false
    
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                ZStack{
//                    Color.white
                    LinearGradient(colors: [.blue, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .edgesIgnoringSafeArea(.all)
                        .hueRotation(.degrees(animatedGradient ? 90 : 0))
                        .onAppear{
                            withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: true)){
                                animatedGradient.toggle()
                            }
                        }
                    VStack{
                        HStack{
                            
                            NavigationLink(destination: LocalTaskView()){
                                ZStack(alignment: .topLeading){
                                    Color.white
                                    VStack(alignment: .leading){
                                        Text("Доставка карты клиенту")
                                            .foregroundColor(.purple)
                                            .lineLimit(2)
                                            .font(.system(size: 13))
                                            .frame(height: 40)
                                            .multilineTextAlignment(.leading)
                                        
                                        HStack(alignment: .top){
                                            Text("21")
                                                .foregroundColor(.purple)
                                                .font(.system(size: 35))
                                                .bold()
                                            Image(systemName: "creditcard.fill")
                                                .foregroundColor(.purple)
                                                .padding(.top, 10)
                                        }.padding(.top, 1)
                                    }
                                    .padding(.top, 10)
                                    .padding(.leading, 10)
                                    
                                    
                                    //                            NavigationLink(destination: LocalTaskView()){
                                    //                            }
                                    //                                .foregroundColor(.blue)
                                    //                                .colorMultiply(.blue)
                                    //                                .buttonStyle(.borderedProminent)
                                    //                                .frame(maxWidth: 115, maxHeight: .infinity)
                                    //                                .padding()
                                    
                                    
                                }.clipShape(RoundedRectangle(cornerSize: CGSize(width: 15.0, height: 15.0)))
                                    .shadow(color: Color.gray, radius: 3.0)
                                    .frame(height: 115)
                                
                            }
                            
                            NavigationLink(destination: LocalTaskView()){
                                ZStack(alignment: .topLeading){
                                    Color.white
                                    VStack(alignment: .leading){
                                        Text("Устранение неполадок ПК")
                                            .foregroundColor(.green)
                                            .lineLimit(2)
                                            .font(.system(size: 13))
                                            .frame(height: 40)
                                            .multilineTextAlignment(.leading)
                                        
                                        HStack(alignment: .top){
                                            Text("2")
                                                .foregroundColor(.green)
                                                .font(.system(size: 35))
                                                .bold()
                                            Image(systemName: "desktopcomputer")
                                                .foregroundColor(.green)
                                                .padding(.top, 10)
                                        }.padding(.top, 1)
                                    }
                                    .padding(.top, 10)
                                    .padding(.leading, 10)
                                    
                                }.clipShape(RoundedRectangle(cornerSize: CGSize(width: 15.0, height: 15.0)))
                                    .shadow(color: Color.gray, radius: 3.0)
                                    .frame(height: 115)
                            }
                            
                            
                            NavigationLink(destination: LocalTaskView()){
                                ZStack(alignment: .topLeading){
                                    Color.white
                                    VStack(alignment: .leading){
                                        Text("Консультация")
                                            .foregroundColor(.orange)
                                            .lineLimit(2)
                                            .font(.system(size: 13))
                                            .frame(height: 40)
                                            .multilineTextAlignment(.leading)
                                        
                                        HStack(alignment: .top){
                                            Text("15")
                                                .foregroundColor(.orange)
                                                .font(.system(size: 35))
                                                .bold()
                                            Image(systemName: "person.fill.questionmark.rtl")
                                                .foregroundColor(.orange)
                                                .padding(.top, 10)
                                        }.padding(.top, 1)
                                    }
                                    .padding(.top, 10)
                                    .padding(.leading, 10)
                                    
                                }.clipShape(RoundedRectangle(cornerSize: CGSize(width: 15.0, height: 15.0)))
                                    .shadow(color: Color.gray, radius: 3.0)
                                    .frame(height: 115)
                                
                            }
                            
                        }.padding(.horizontal, 20)
                        
                        
                        
                        
                        HStack{
                            NavigationLink(destination: LocalTaskView()){
                                ZStack(alignment: .topLeading){
                                    Color.white
                                    VStack(alignment: .leading){
                                        Text("Встреча с клиентом")
                                            .foregroundColor(.pink)
                                            .lineLimit(2)
                                            .font(.system(size: 13))
                                            .frame(height: 40)
                                            .multilineTextAlignment(.leading)
                                        
                                        HStack(alignment: .top){
                                            Text("14")
                                                .foregroundColor(.pink)
                                                .font(.system(size: 35))
                                                .bold()
                                            Image(systemName: "person.and.person.fill")
                                                .foregroundColor(.pink)
                                                .padding(.top, 10)
                                        }.padding(.top, 1)
                                    }
                                    .padding(.top, 10)
                                    .padding(.leading, 10)
                                    
                                }.clipShape(RoundedRectangle(cornerSize: CGSize(width: 15.0, height: 15.0)))
                                    .shadow(color: Color.gray, radius: 3.0)
                                    .frame(height: 115)
                                
                            }
                            
                            NavigationLink(destination: LocalTaskView()){
                                ZStack(alignment: .topLeading){
                                    Color.white
                                    VStack(alignment: .leading){
                                        Text("Анкетирование")
                                            .foregroundColor(.blue)
                                            .lineLimit(2)
                                            .font(.system(size: 13))
                                            .frame(height: 40)
                                            .multilineTextAlignment(.leading)
                                        
                                        HStack(alignment: .top){
                                            Text("23")
                                                .foregroundColor(.blue)
                                                .font(.system(size: 35))
                                                .bold()
                                            Image(systemName: "list.bullet.clipboard.fill")
                                                .foregroundColor(.blue)
                                                .padding(.top, 10)
                                        }.padding(.top, 1)
                                    }
                                    .padding(.top, 10)
                                    .padding(.leading, 10)
                                    
                                }.clipShape(RoundedRectangle(cornerSize: CGSize(width: 15.0, height: 15.0)))
                                    .shadow(color: Color.gray, radius: 3.0)
                                    .frame(height: 115)
                                
                            }
                            
                            
                            NavigationLink(destination: LocalTaskView()){
                                ZStack(alignment: .topLeading){
                                    Color.white
                                    VStack(alignment: .leading){
                                        Text("Работа с банкоматом")
                                            .foregroundColor(.mint)
                                            .lineLimit(2)
                                            .font(.system(size: 13))
                                            .frame(height: 40)
                                            .multilineTextAlignment(.leading)
                                        
                                        HStack(alignment: .top){
                                            Text("3")
                                                .foregroundColor(.mint)
                                                .font(.system(size: 35))
                                                .bold()
                                            Image(systemName: "banknote.fill")
                                                .foregroundColor(Color.mint)
                                                .padding(.top, 10)
                                        }.padding(.top, 1)
                                    }
                                    .padding(.top, 10)
                                    .padding(.leading, 10)
                                    
                                }.clipShape(RoundedRectangle(cornerSize: CGSize(width: 15.0, height: 15.0)))
                                    .shadow(color: Color.gray, radius: 3.0)
                                    .frame(height: 115)
                                
                            }
                            
                        }
                        .padding(.horizontal, 20)
                        
                    }
                    .padding(.top, 40)
                }.frame(height: 350)

                
                
                List(){
                    Section("В процессе", content: {
                        ForEach(taskViewModel.getTaskInProcess()){
                            task in TaskRow(task: task)
                                .listRowSeparator(.hidden)
                        }
                    })
                    .font(.system(size: 20))
                    
                    Section("История", content: {
                        ForEach(taskViewModel.getTaskInProcess()){
                            task in TaskRow(task: task)
                                .listRowSeparator(.hidden)
                        }
                    })
                    .font(.system(size: 20))
                }
                .listStyle(.plain)
                .padding(.top, -8)
                
                
                
            }
            .edgesIgnoringSafeArea(.top)
            
        }
    }
}

struct TaskRow: View{
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
                    .padding(.top, 5)
                    
                    HStack{
                        Text("Адрес:")
                            .foregroundColor(.gray)
                            .font(.system(size: 13))
                        Text(task.address)
                            .foregroundColor(.gray)
                            .font(.system(size: 13))
                            .padding(.trailing, 100)
                    }
                    .padding(.leading, 20)
                    .padding(.top, -5)
                    .padding(.bottom, 10)
                    
                }
            
            ZStack{
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
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
            .padding(.trailing, 10)
            

        }.clipShape(RoundedRectangle(cornerSize: CGSize(width: 15.0, height: 15.0)))
            .foregroundColor(Color.white)
            .shadow(color: Color.gray, radius: 3.0)
            .frame(height: 70)
    }
}



struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
