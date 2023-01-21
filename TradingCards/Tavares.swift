//
//  Tavares.swift
//  TradingCards
//
//  Created by Leon Gell on 2023-01-13.
//

import SwiftUI

struct Tavares: View {
    var body: some View {
        CustomStruc(teamcolor: "DarkBlue", name: "John Tavares", playerimage: "Tavares", logo: "MapleLeafs", number: "#91", flag: "Canada", GP: "340", Goals: "230", Assists: "348", Points: "504", PIM: "70", summary: "overpayes")
    }
}

struct Tavares_Previews: PreviewProvider {
    static var previews: some View {
        Tavares()
    }
}
