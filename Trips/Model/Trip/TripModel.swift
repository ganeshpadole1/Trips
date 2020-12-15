//
//  TripModel.swift
//  Trips
//
//  Created by Ganesh Padole on 15/12/20.
//

import Foundation

class TripModel {
    let id: UUID
    var title: String
    
    init(title: String) {
        id = UUID()
        self.title = title
    }
}
