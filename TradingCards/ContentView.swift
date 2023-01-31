//
//  ContentView.swift
//  TradingCards
//
//  Created by Leon Gell on 2023-01-12.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    let CustomStrucShow: CustomStruc
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    // first color background
                    Color(CustomStrucShow.teamcolor)
                    
                    
                    //Name
                    VStack{
                        Text(CustomStrucShow.name)
                            .font(Font.custom("HelveticaNeue-Medium", size: 40))
                        
                        //image
                        ZStack {
                    
                            Image(CustomStrucShow.playerimage)
                            
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 400)
                        
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 25)
                            
                        )
                            
                            
                        }
                        
                    }
                    //Logo placement
                    VStack {
                    Spacer()
                            .frame(height: 350)
                    HStack{
                        Spacer()
                            .frame(width: 175)
                        Image(CustomStrucShow.logo)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        
                    }
                }
                    //Number Placement
                    VStack {
                        HStack {
                            Spacer()
                                .frame(width: 210)
                           
                            Text(CustomStrucShow.number)
                                .font(Font.custom("HelveticaNeue-Medium", size: 40))
                                .background(
                                    Color.white
                                )
                                .overlay(
                                    Rectangle()
                                        .stroke(Color.white)
                                )
                        }
                        Spacer()
                        .frame(height: 270)
                    }
                    
                  
                    //National Country
                    VStack {
                        Spacer()
                            .frame(height: 430)
                        HStack{
                            
                            Image(CustomStrucShow.flag)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 100)
                            Spacer()
                                .frame(width: 200)
                        }
                        
                        
                    }
                  
                }//end of ZStack
                //PLAYER STATS
                HStack {
                    Text("Carrer Stats")
                        .bold()
                        .padding(.bottom, 5)
                    Spacer()
                        .frame(width: 280)
                }
                
                HStack(spacing: 20) {
                    
                    VStack(alignment: .leading){
                        Text("GP")
                        Text(CustomStrucShow.GP)
            
                    }
                    VStack(alignment: .leading){
                        Text("Goals")
                        Text(CustomStrucShow.Goals)
            
                    }
                    VStack(alignment: .leading){
                        Text("Assists")
                        Text(CustomStrucShow.Assists)
            
                    }
                    VStack(alignment: .leading){
                        Text("Points")
                        Text(CustomStrucShow.Points)
                    }
                    VStack(alignment: .leading){
                        Text("PIM")
                        Text(CustomStrucShow.PIM)
            
                    }
                    
                Spacer()
                        .frame(width: 70)
                }
                VStack {
                    Text("Accolades")
                        .bold()
                        .padding(.bottom, 5)
                    Text(CustomStrucShow.summary)
                        .padding()
                }
                
                
               
                
            }//end of VSTACK
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
          ContentView(CustomStrucShow: matthews)
        }
    }
}
