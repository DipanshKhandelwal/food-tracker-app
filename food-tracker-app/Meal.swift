//
//  Meal.swift
//  food-tracker-app
//
//  Created by Dipansh Khandelwal on 20/10/19.
//  Copyright © 2019 DipanshKhandelwal. All rights reserved.
//

import UIKit

class Meal {
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        // Initialization should fail if there is no name or if the rating is negative.
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
         
        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
}
