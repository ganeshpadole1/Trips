//
//  TripsTableViewCell.swift
//  Trips
//
//  Created by Ganesh Padole on 16/12/20.
//

import UIKit

class TripsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var tripTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cardView.addShadowAndRoundedCorner()
    }
    
    func setup(tripModel: TripModel) {
        tripTitleLabel.text = tripModel.title
    }
}
