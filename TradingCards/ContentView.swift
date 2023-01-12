//
//  ContentView.swift
//  TradingCards
//
//  Created by Leon Gell on 2023-01-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    // first color background
                    Color("DarkBlue")
                    
                    
                    //Name
                    VStack{
                        Text("Auston Matthews")
                            .font(Font.custom("HelveticaNeue-Medium", size: 40))
                        //image
                        Image("Matthews")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 400)
                    //.background(RoundedRectangle(cornerRadius: 0)
                                    // Create the shape
                            //.foregroundColor(Color.white))
                        
                    }
                    //Logo placement
                    VStack {
                    Spacer()
                            .frame(height: 350)
                    HStack{
                        Spacer()
                            .frame(width: 175)
                        Image("MapleLeafs")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        
                    }
                }
                    //Number Placement
                    VStack {
                        HStack {
                            Spacer()
                                .frame(width: 220)
                           
                            Text("#34")
                            
                                .font(Font.custom("HelveticaNeue-Medium", size: 40))
                        }
                        Spacer()
                        .frame(height: 290)
                    }
                    //.background(RoundedRectangle(cornerRadius: 0)
                                // Create the shape
                        //.foregroundColor(Color.white))
                  
                    //National Country
                    VStack {
                        Spacer()
                            .frame(height: 430)
                        HStack{
                            
                          Image("USA")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 100)
                            Spacer()
                                .frame(width: 200)
                        }
                        
                        
                    }
                    
                }
                
                
                
                
               
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
