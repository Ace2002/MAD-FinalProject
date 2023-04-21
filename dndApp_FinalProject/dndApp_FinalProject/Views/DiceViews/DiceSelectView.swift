//
//  DiceSelectView.swift
//  dndApp_FinalProject
//
//  Created by Carson G Sump on 3/28/23.
//

import SwiftUI

struct DiceSelectView: View {
    
    var body: some View {
        VStack{
            Text("ROLL")
                .font(.title)
                .bold()
            DiceRow()
        }
    }
}



struct DiceSelectView_Previews: PreviewProvider {
    static var previews: some View {
        DiceSelectView()
    }
}
