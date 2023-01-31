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
        
        List(allplayers) { currentplayer in
            
            NavigationLink(destination: {
                ContentView(CustomStrucShow: currentplayer)
            }, label: {
                Text(currentplayer.name)
            })
            
            
            
            
            
            
            
            
            
            
        }
    }
    
    struct StartPlayersView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                StartPlayersView()
            }
        }
    }
    
}
