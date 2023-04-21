//
//  Dice.swift
//  dndApp_FinalProject
//
//  Created by Carson G Sump on 4/3/23.
//

import Foundation
import SwiftUI

struct Die: Hashable {
    var sides: Int
    var shape: String
    var value = 0
    var image: Image {
        Image(systemName: shape)
    }
    
    mutating func roll(){
        value = Int.random(in: 1...sides)
    }
    
    
}
