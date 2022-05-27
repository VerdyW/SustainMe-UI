//
//  LoginPage.swift
//  SustainMe
//
//  Created by Verdy Wahyudi on 24/05/22.
//

import SwiftUI



struct LoginPage: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
       
        
        ZStack{
            
            Image("Cloud 1")
                .resizable()
                .frame(width: 400, height: 150)
                .offset(x: -70, y: 275)
            
            Image("Cloud 2")
                .resizable()
                .frame(width: 400, height: 150)
                .offset(x: 30, y: -285)
            
            VStack{
                Spacer()
                
                Image("LOGO 1")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                Text("Sign In")
                    .font(.system(size: 22))
                    .bold()
                    .foregroundColor(Color("GreenPrimary"))
                    .padding(.bottom, 20)
                
                
                
                VStack(alignment: .leading){
                    Text("Email")
                        .padding(.bottom, -8)
                    TextField(
                            "Email Address",
                            text: $username
                        )
                    .frame(height: 25)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                    .border(.secondary)
                    .cornerRadius(5)
                    
                    
                Text("Password")
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: -8, trailing: 0))
                    
                SecureField(
                    "Password",
                    text: $password
                )
                    .frame(height: 25)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                    .border(.secondary)
                    .cornerRadius(5)
                    
                }.frame(width: 250)
                
                Spacer()
                
                VStack{
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("GreenPrimary"))
                            .frame(width: 120, height: 50)
                        
                        Text("SIGN IN")
                            .font(.system(size: 28))
                            .bold()
                        .foregroundColor(Color.white)
                    }
                    Text("Sign Up")
                        .font(.system(size: 14))
                        .bold()
                        .foregroundColor(Color("GreenSecondary"))
                }
                
                Spacer()
            }
                
            
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
