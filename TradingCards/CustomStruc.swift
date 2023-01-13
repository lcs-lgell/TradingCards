//
//  CustomStruc.swift
//  TradingCards
//
//  Created by Leon Gell on 2023-01-12.
//

import SwiftUI

struct CustomStruc: View {
    //MARK: Stored Properties
    let teamcolor: String
    let name: String
    let playerimage: String
    let logo: String
    let number: String
    let flag: String
    let GP: String
    let Goals: String
    let Assists: String
    let Points: String
    let PIM: String
    let summary: String
    
    
    
    //MARK: Computed Properties
    
    
    var body: some View {
        
    
        ScrollView {
            VStack {
                ZStack {
                    // first color background
                    Color(teamcolor)
                    
                    
                    //Name
                    VStack{
                        Text(name)
                            .font(Font.custom("HelveticaNeue-Medium", size: 40))
                        
                        //image
                        ZStack {
                    
                            Image(playerimage)
                            
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
                        Image(logo)
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
                           
                            Text(number)
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
                            
                          Image(flag)
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
                        Text(GP)
            
                    }
                    VStack(alignment: .leading){
                        Text("Goals")
                        Text(Goals)
            
                    }
                    VStack(alignment: .leading){
                        Text("Assists")
                        Text(Assists)
            
                    }
                    VStack(alignment: .leading){
                        Text("Points")
                        Text(Points)
                    }
                    VStack(alignment: .leading){
                        Text("PIM")
                        Text(PIM)
            
                    }
                    
                Spacer()
                        .frame(width: 70)
                }
                VStack {
                    Text("Accolades")
                        .bold()
                        .padding(.bottom, 5)
                    Text(summary)
                }
                
                
               
                
            }//end of VSTACK
        }
    }
}

struct CustomStruc_Previews: PreviewProvider {
    static var previews: some View {
        CustomStruc(teamcolor: "DarkBlue", name: "Auston Matthews", playerimage: "Matthews", logo: "MapleLeafs", number: "#34", flag: "USA", GP: "90", Goals: "400", Assists: "300", Points: "700", PIM: "40", summary: "the goat")
    }
}
