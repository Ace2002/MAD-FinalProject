//
//  InitiativeListView.swift
//  dndApp_FinalProject
//
//  Created by Carson G Sump on 4/17/23.
//

import SwiftUI

//Maybe rethink some of the names that are used. Specificly "user".

struct InitiativeListView: View {
    @State private var inititiveList = [String]()
    @State private var initiativeUser: String = ""
    
    var body: some View {
        VStack {
            List{
                ForEach(inititiveList.indices, id: \.self) { user in
                    HStack {
                        Text("\(user + 1)")
                        Text("\(inititiveList[user])")
                        Button{
                            inititiveList.remove(at: user)
                        }label: {
                            Text("Remove")
                        }
                            .buttonStyle(.bordered)
                            
                    }
                }
            }
            TextField("Enter Here", text: $initiativeUser)
                .textFieldStyle(.roundedBorder)
                .padding()
                .autocorrectionDisabled()
                .onSubmit {
                    inititiveList.append(initiativeUser)
                }
        }
    }
}

struct InitiativeListView_Previews: PreviewProvider {
    static var previews: some View {
        InitiativeListView()
    }
}
