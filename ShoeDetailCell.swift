//
//  ShoeDetailCell.swift
//  Ecommerce
//
//  Created by Eric Rosas on 2/13/17.
//  Copyright © 2017 EmpireAppDesignz. All rights reserved.
//

import UIKit

class ShoeDetailCell : UITableViewCell
{
    @IBOutlet weak var shoeNameLabel: UILabel!
    @IBOutlet weak var shoeDescriptionLabel: UILabel!
    
    var shoe: Shoe! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI()
    {
        shoeNameLabel.text = shoe.name
        shoeDescriptionLabel.text = shoe.description
    }
}
