//
//  ContentView.swift
//  TradingCards
//
//  Created by Leon Gell on 2023-01-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                    // first color background
                    Color("DarkBlue")
                
                
                VStack{
                    Text("Auston Matthews")
                        .font(Font.custom("HelveticaNeue-Medium", size: 40))
                    Image("Matthews")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 400)
                    
                    
                    
                        
                }
                
            }
           
        
            
            VStack {
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
