//
//  TripModel.swift
//  Trips
//
//  Created by Ganesh Padole on 15/12/20.
//

import Foundation

class TripModel {
    var id: String!
    var title: String!
    
    init(title: String) {
        id = UUID().uuidString
        self.title = title
    }
}
