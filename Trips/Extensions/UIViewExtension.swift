//
//  UIViewExtension.swift
//  Trips
//
//  Created by Ganesh Padole on 17/12/20.
//

import UIKit

extension UIView {
    
    func addShadowAndRoundedCorner() {
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 10
    }
}
