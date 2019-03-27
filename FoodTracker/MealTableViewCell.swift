//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Obinna Asinugo on 3/27/19.
//  Copyright © 2019 Obinna Asinugo. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    //MARK: properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
