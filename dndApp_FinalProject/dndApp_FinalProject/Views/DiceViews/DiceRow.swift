//
//  DiceRow.swift
//  dndApp_FinalProject
//
//  Created by Carson G Sump on 3/30/23.
//

import SwiftUI

struct DiceRow: View {
    var dice = [Die(sides: 20, shape: "octagon"),
                Die(sides: 12, shape: "hexagon"),
                Die(sides: 10, shape: "pentagon"),
                Die(sides: 8, shape: "diamond"),
                Die(sides: 6, shape: "square"),
                Die(sides: 4, shape: "triangle")]
    
    
    // Ask about creating an array for the number of sides. Use index of diceNames to grab number.
    var body: some View {
        VStack {
            HStack {
                ForEach(dice[0...2], id: \.self){ dieIcon in
                    DieView(die: dieIcon)
                }
            }
            HStack {
                ForEach(dice[3...5], id: \.self){ dieIcon in
                    DieView(die: dieIcon)
                }
            }
        }
    }
}

struct DiceRow_Previews: PreviewProvider {
    static var previews: some View {
        DiceRow()
    }
}
