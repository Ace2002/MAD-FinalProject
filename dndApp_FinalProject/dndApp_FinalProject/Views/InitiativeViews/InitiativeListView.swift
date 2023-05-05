//
//  InitiativeListView.swift
//  dndApp_FinalProject
//
//  Created by Carson G Sump on 4/17/23.
//

import SwiftUI

struct InitiativeListView: View {
    @State var initiativeData: InitiativeData
    @State private var initiativeUser: String = ""
    
    var body: some View {
        VStack {
            List{
                ForEach(initiativeData.initiativeList.indices, id: \.self) { user in
                    HStack {
                        Text("\(user + 1)")
                        Text("\(initiativeData.initiativeList[user])")
                        Button{
                            initiativeData.initiativeList.remove(at: user)
                        }label: {
                            Text("Remove")
                        }
                        .buttonStyle(.bordered)
                        .buttonBorderShape(.capsule)
                    }
                }
            }
            
            TextField("Enter Here", text: $initiativeUser)
                .textFieldStyle(.roundedBorder)
                .padding()
                .autocorrectionDisabled()
                .onSubmit {
                    initiativeData.initiativeList.append(initiativeUser)
                }
                .colorInvert()

        }
    }
}

struct InitiativeListView_Previews: PreviewProvider {
    static var previews: some View {
        InitiativeListView(initiativeData: InitiativeData())
    }
}
