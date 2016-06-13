//
//  ViewController.swift
//  ElectionAPP
//
//  Created by peppermini on 6/11/16.
//  Copyright © 2016 RMPM. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController{
    
   
    @IBOutlet weak var collection : UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.delegate = self
        collection.dataSource = self
    }
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as? ChosenCollectionViewCell {
            
            let escolhidos = Escolhidos(name: "Test", CSVID: indexPath.row)
            cell.configureCell(escolhidos)
            return cell
            
        } else {
            return UICollectionViewCell()
        }
        
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
    }
    
//    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
//        return 1
//    }
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSizeMake(120, 130)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
 
    
}

