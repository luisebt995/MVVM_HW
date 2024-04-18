//
//  ViewEx.swift
//  MVVM_HW
//
//  Created by Luis on 18/4/24.
//

import SwiftUI

struct ViewEx: View {
    @ObservedObject private var userViewModel = ViewModelHW()
    
    @State var show = false
    
    
    var body: some View {
        VStack{
            Spacer()
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Container@*/VStack/*@END_MENU_TOKEN@*/ {
                TextField("User", text: $userViewModel.user)
                    .font(.system(size: 21, weight: .light, design: .serif))
                Divider()
                    .frame(height: 1)
                    .background(.yellow)
                SecureField("Password", text: $userViewModel.password)
                    .font(.system(size: 21, weight: .light, design: .serif))
                Divider()
                    .frame(height: 1)
                    .background(.red)
            }
            .padding(.horizontal)
                

            Spacer()
            
            Button("Register"){
                userViewModel.registrar()

            }
            .padding(0.5)
            
            Button(show ? "Don't show registers" : "Show Register"){
                show.toggle()
            }
            .padding(0.5)
            
            Spacer()
            
            if show {
            ScrollView(showsIndicators: false){
                    ForEach(userViewModel.users){ user in
                        Text("\(user.user) -- \(user.password)")
                    }
                }
                .frame(height: 100)
                .padding()
            }
        }
    }
}

struct ViewEx_Previews: PreviewProvider {
    static var previews: some View {
        ViewEx()
    }
}
