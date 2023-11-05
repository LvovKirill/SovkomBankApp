//
//  ProfileView.swift
//  SovkomBank
//
//  Created by Kirill on 29.10.2023.
//

import SwiftUI
import Charts

struct ProfileView: View {
    
    var profileViewModel = ProfileViewModel()
    @State var currentTab: String = "week"
    @State private var animatedGradient = false
    
    
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading){
                ZStack{
                    VStack(spacing: -45){

                        LinearGradient(colors: [.blue, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                            .edgesIgnoringSafeArea(.all)
                            .hueRotation(.degrees(animatedGradient ? 90 : 0))
                            .onAppear{
                                withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: true)){
                                    animatedGradient.toggle()
                                }
                            }
                            .frame(height: 150.0)
                        
                        VStack{
                            Image("KostyaAva")
                                .resizable()
                                .frame(width: 90.0, height: 90.0)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 4)
                                ).shadow(radius: 15)
                            
                            Text("Цой Константин")
                                .bold()
                            
                            HStack(spacing: 2){
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gray)
                            }.padding(.top, -8)
                        }
                    }
                    
                    
                    ZStack(alignment: .leading){
                        
                        Button(action: {
                            UserDefaults.standard.set(false, forKey: "enteranceStatus")
                            
                            ContentView.isShowedEntranceView.toggle()
                        }){
                            Image(systemName: "arrow.backward")
                        }
                        .padding(.top, 50)
                        .padding(.leading, 20)
                        .buttonStyle(.plain)
                        .foregroundColor(.white)
                        .colorMultiply(.white)
                        .tint(.white)
                        .cornerRadius(20)

                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
                    
                    ZStack(alignment: .leading){
                        
                        ZStack(alignment: .leading){
                            Color.white
                            HStack{
                                Image(systemName: "diamond.circle")
                                    .foregroundColor(.blue)
                                    .padding(.leading, 5)
                                Text("132")
                                    .font(.system(size: 18))
                                    .bold()
                            }
                            
                        }
                            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 15.0, height: 15.0)))
//                            .shadow(color: Color.gray, radius: 3.0)
                            .frame(width: 73, height: 30)
                        

                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                    .padding(.top, 45)
                    .padding(.trailing, 20)
                    
                
                }
            
                
            
                
                ZStack(alignment: .topLeading){
                    Color.white

                    VStack(alignment: .leading){
                        
                        HStack{
                            Text("Роль:")
                                .foregroundColor(Color.black)
                                .bold()
                            Text("курьер")
                                .foregroundColor(Color.blue)
                        }.padding(.top, 0.1)
                        
                        HStack{
                            Text("Стаж:")
                                .foregroundColor(Color.black)
                                .bold()
                            Text("2 года")
                                .foregroundColor(Color.blue)
                        }.padding(.top, 0.1)
                        
                        
                        HStack{
                            Text("Задачи:")
                                .foregroundColor(Color.black)
                                .bold()
                            Text("93")
                                .foregroundColor(Color.blue)
                        }.padding(.top, 0.1)
                        
                            

                    }
                    .padding(.leading, 10.0)
                    .padding(.vertical, 10.0)

                }.clipShape(RoundedRectangle(cornerSize: CGSize(width: 15.0, height: 15.0)))
                    .padding(.horizontal, 20.0)
                    .padding(.top, 20.0)
                    .foregroundColor(Color.white)
                    .shadow(color: Color.gray, radius: 10.0)
                

//                HStack{
//                    Text("Активность")
//                        .font(.system(size: 25))
//                        .foregroundColor(.black)
//                        .bold()
//
//
//                }
//                .padding(.leading, 25.0)
//                .padding(.top, 5.0)
             
//                Chart(profileViewModel.data){
//                    point in
//                    LineMark(
//                        x: .value("Дни", point.numberOfDay),
//                        y: .value("Задачи", point.countTask))
//                    .symbol(Circle())
//
//                }
//                .frame(height: 200)
//                .padding(.horizontal, 25)
//                .chartXAxis(Visibility.hidden)
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Активность")
                                .font(.system(size: 25))
                                .foregroundColor(.black)
                                .bold()
                        Picker("", selection: $currentTab){
                            Text("неделя")
                                .tag("week")
                            Text("месяц")
                                .tag("month")
                            Text("год")
                                .tag("year")
                        }
                        .pickerStyle(.segmented)
                        .padding(.leading, 30)
                    }.padding(.horizontal, 20)
                    
                    HStack{
                        Text("Лучший:")
                            .padding(.leading, 20)
                            .font(.system(size: 20))
                            .foregroundColor(.gray)
                            .bold()
                        Text(String(
                            profileViewModel.data.max{
                                item1, item2 in
                                return item2.countTask > item1.countTask
                            }?.countTask ?? 0
                        ) )
                        .font(.system(size: 30))
                        .foregroundColor(.blue)
                        .bold()
                        
                    }
                    
        
                    
                    AnimatedChart().padding(.top, -5)
                }.padding(.top, 20)
                
            
                
                

                
                
            }
        }.edgesIgnoringSafeArea(.top)
    }
    
    @ViewBuilder
    func AnimatedChart()-> some View{
        
        let max = profileViewModel.data.max{
            item1, item2 in
            return item2.countTask > item1.countTask
        }?.countTask ?? 0
        
        
        Chart{
            ForEach(profileViewModel.data){
                point in
                BarMark(x: .value("Дни", point.numberOfDay),
                        y: .value("Задачи",  point.countTask))
                .foregroundStyle(Color.blue.gradient)
                .cornerRadius(10)
            }
        }
        .padding(.horizontal, 20)
        .frame(height: 200)
        .chartYScale(domain: 0...(max + 5))
        .onAppear{
            animateGraph()
        }
        .animation(.easeInOut)
        
        
    }
        func animateGraph(fromChange: Bool = false){
            for(index,_) in profileViewModel.data.enumerated(){
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * (fromChange ? 0.03 : 0.05)){
                    withAnimation(fromChange ? .easeInOut(duration: 0.8) : .interactiveSpring(response: 0.8, dampingFraction: 0.8, blendDuration: 0.8)){
                        profileViewModel.data[index].animate = true
                    }
                }
            }
        
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
