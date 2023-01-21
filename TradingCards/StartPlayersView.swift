//
//  StartPlayersView.swift
//  TradingCards
//
//  Created by Leon Gell on 2023-01-13.
//

import SwiftUI
// MAKE LIST NEXT
struct StartPlayersView: View {
    var body: some View {
        List {
            NavigationLink(destination: {
                ContentView(CustomStrucShow: matthews)
            }, label: {
                Image("Matthews")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .center)
                VStack(alignment: .leading){
                    Text("Auston Matthews")
                    Text("funniest guy there is")
                        .font(.caption)
                }
            })
            
            
            
            
            
            
            
            
            
        }
    }
    
    struct StartPlayersView_Previews: PreviewProvider {
        static var previews: some View {
            StartPlayersView()
        }
    }
    
}
