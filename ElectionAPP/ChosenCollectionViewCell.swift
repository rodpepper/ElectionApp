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
    
    var escolhidos: Escolhidos!
    
    required init?(coder aDecoder: NSCoder) {

        super.init(coder: aDecoder)
        
        layer.cornerRadius = 7
        
    }
    
    
    
    func configureCell(escolhidos: Escolhidos) {
        self.escolhidos = escolhidos
        
        chosenTitleLabel.text = self.escolhidos.name.capitalizedString
        chosenImageView.image = UIImage (named: "\(self.escolhidos.CSVID)")
    }
    
    

}



