//
//  TableViewCells.swift
//  ConstraintsTask
//
//  Created by Us on 14/06/2020.
//  Copyright © 2020 David Arebuwa. All rights reserved.
//

import UIKit

class ItemViewCells: UITableViewCell{
    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemQuantityStepper: UIStepper!
    @IBOutlet weak var itemQuantity: UILabel!
    
}
class TotalViewCells: UITableViewCell{
    
    @IBOutlet weak var totalTitle: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    
}
class NextButtonCell: UITableViewCell{
    
    @IBOutlet weak var nextButton: UIButton!
    
}
