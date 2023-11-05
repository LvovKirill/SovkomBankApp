//
//  EntranceView.swift
//  SovkomBank
//
//  Created by Kirill on 31.10.2023.
//

import SwiftUI

struct EntranceView: View {
    @State private var email = ""
    @State private var password = ""
    
    @State var isShowedBack = false
    
    var entranceViewModel = EntranceViewModel()
    
    var body: some View {
        
        if UserDefaults.standard.bool(forKey: "enteranceStatus"){
            
            VStack{
                
                Text("Вход")
                    .bold()
                    .padding(.top, 20)
                    .foregroundColor(.indigo)
                
                Spacer()
                
                //            Image("sovcombankLogo")
                Image("sovcombankLogo")
                    .resizable()
                    .frame(width: 300.0, height: 40.0)
                    .padding(.horizontal, 20)
                //                .frame(width: 50, height: 100)
                
                
                Spacer()
                
                VStack(alignment: .leading){
                    Text("Почта")
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                        .padding(.bottom, -3)
                    
                    TextField("Почта", text: self.$email)
                        .textFieldStyle(.roundedBorder)
                        .foregroundColor(.black)
                        .overlay( RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.indigo))
                    
                    Text("Пароль")
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                        .padding(.bottom, -3)
                        .padding(.top, 15)
                    
                    TextField("Пароль", text: self.$password)
                        .textFieldStyle(.roundedBorder)
                        .foregroundColor(.black)
                        .overlay( RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.indigo))
                    
                }
                .padding(.horizontal, 50)
                
                ZStack{
                    Button(action: {}){
                        Text("Забыли пароль?")
                    }.padding(.trailing, 50)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                
                Spacer()
                
                Button(action: {
                    
                    entranceViewModel.searchUser(email: email, password: password)
                    
                    isShowedBack.toggle()
                    
                }){
                    Text("ВОЙТИ")
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                }
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
                .foregroundColor(.white)
                .cornerRadius(15)
                
                
                
                Spacer()
            }.fullScreenCover(isPresented: $isShowedBack){
                ContentView()
                
            }
        }else{
                ContentView()
            

            }
        }
}

struct EntranceView_Previews: PreviewProvider {
    static var previews: some View {
        EntranceView()
    }
}
