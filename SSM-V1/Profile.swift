//
//  Profile.swift
//  SSM-V1
//
//  Created by Waldorfschule Berlin Mitte on 05.01.24.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            // Profile Picture
            ZStack{
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 160, height: 160)
                    .foregroundColor(.white)
                    .padding(30)
            }
            .background(Color(.gray))
            .cornerRadius(140)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .padding(60)
            
            // Name
            Text("Max Mustermann")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            // Tags
            VStack{
                //Schule
                HStack{
                    //Tag Element
                    ZStack{
                        Text("X. Klasse")
                            .padding(14)
                    }
                    .background(Color(.red))
                    .cornerRadius(20)
                    .shadow(radius: 10)

                }
            }
            
            //cardview
            
            
        Spacer()
            
            
            
        }
    }
}

#Preview {
    Profile()
}
