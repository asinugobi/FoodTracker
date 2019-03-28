//
//  Meal.swift
//  FoodTracker
//
//  Created by Obinna Asinugo on 3/27/19.
//  Copyright © 2019 Obinna Asinugo. All rights reserved.
//

import UIKit
import os.log

class Meal: NSObject, NSCoding {
    //Mark: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //Mark: Initialization
    init?(name: String, photo: UIImage?, rating: Int){
        // Initialization should fail if there is no name or if the rating is negative.
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be betwen 0 and 5 exclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
    //MARK: NSCoding
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: PropertyKey.name)
        aCoder.encode(photo, forKey: PropertyKey.photo)
        aCoder.encode(rating, forKey: PropertyKey.rating)
    }
    
    required init?(coder aDecoder: NSCoder) {
        <#code#>
    }
}

