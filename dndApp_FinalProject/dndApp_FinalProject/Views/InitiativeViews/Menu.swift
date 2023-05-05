//
//  Menu.swift
//  dndApp_FinalProject
//
//  Created by Carson G Sump on 5/3/23.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        NavigationView{
            VStack {
                //Go to Dice View
                NavigationLink{
                    DiceSelectView()
                } label: {
                    Image(systemName: "octagon")
                        .font(.title)
                    Text("Dice roller")
                        .font(.title)
                }
                .padding()
                
                //Go to Initiative View
                NavigationLink{
                    InitiativeListView()
                } label: {
                    Image(systemName: "list.bullet.rectangle")
                        .font(.title)
                    Text("Initiative Tracker")
                        .font(.title)
                }
            }
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
