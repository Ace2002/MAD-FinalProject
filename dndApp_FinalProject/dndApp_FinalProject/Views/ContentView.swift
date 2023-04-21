//
//  ContentView.swift
//  dndApp_FinalProject
//
//  Created by Carson G Sump on 3/28/23.
//

import SwiftUI
//Notes:
//--Create a homepage View to navigate between the other Views--
//Options: have all views be selectable at all views (taskbar-esk)

struct ContentView: View {
    var body: some View {
        DiceSelectView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }

}
