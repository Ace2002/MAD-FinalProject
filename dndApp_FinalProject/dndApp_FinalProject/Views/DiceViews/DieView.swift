//
//  DiceImage.swift
//  dndApp_FinalProject
//
//  Created by Carson G Sump on 3/30/23.
//

import SwiftUI

struct DieView: View {
    @State var die: Die
    
    //current frame doesn't translate to other devices
    //change image to make it easier to use ouside this file
    var body: some View {
        VStack {
            Button{
                die.roll()
            } label: {
                die.image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50.0, height: 50.0)
                    .overlay(
                        Text("\(die.sides)")
                    )
                    .padding()
                    .foregroundColor(Color.red)
            }
            Text("\(die.value)")
                .bold()
        }
    }
}

struct DieView_Previews: PreviewProvider {
    static var previews: some View {
        DieView(die: Die(sides: 20, shape: "octagon"))
    }
}
