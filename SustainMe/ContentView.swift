//
//  ContentView.swift
//  SustainMe
//
//  Created by Verdy Wahyudi on 22/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(Color( "GreenPrimary"))
                .frame(width: 500, height: 500)
                .edgesIgnoringSafeArea(.all)
                .offset(x: 0, y: -410)
               
            VStack{
                Image("Logo 2")
                    .padding(.trailing)
                Spacer()
                Text("HOME")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 25)
            
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color( "GreenPrimary"))
                        .frame(width: 275, height: 65)
                Text("Start Your Sustainability Journey")
                        .foregroundColor(Color.white)
                }
                
                Spacer()
                
                HStack {
                    Text("Article").font(.headline).padding(.leading)
                    
                    Spacer()
                }.frame(width: 320)
                
                VStack(alignment: .leading){
                        
                    ScrollView(.horizontal, showsIndicators: false){ HStack{
                            
                            Image("Article 1")
                    
                            Image("Article 2")
                    
                            Image("Article 3")
                    }
                    }.frame(width: 320)
                
                
                        
                }
                
                Text("See All Aticles")
                    .foregroundColor(Color("GreenPrimary"))
                    
                Spacer()
                
                HStack{
                    Image("CHome")
                        .padding(.leading)
                    Spacer()
                    Image("Event")
                    Spacer()
                    Image("Campaign")
                    Spacer()
                    Image("Profile")
                        .padding(.trailing)
                }.frame(width: 320, height: 75)
                    .background(Color("GreenPrimary"))
                
            }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
