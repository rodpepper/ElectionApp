//
//  ChosenCollectionViewCell.swift
//  ElectionAPP
//
//  Created by peppermini on 6/12/16.
//  Copyright © 2016 RMPM. All rights reserved.
//

import UIKit

class ChosenCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var chosenImageView: UIImageView!
    @IBOutlet weak var visualEffectImageView: UIVisualEffectView!
    @IBOutlet weak var chosenTitleLabel: UILabel!
    

   
    override func awakeFromNib() {
        super.awakeFromNib()
        
        chosenImageView.layer.cornerRadius = 7
        chosenImageView.clipsToBounds = true
        visualEffectImageView.layer.cornerRadius = 7
        visualEffectImageView.clipsToBounds = true
        
    
        
        
    }
    
    
}



