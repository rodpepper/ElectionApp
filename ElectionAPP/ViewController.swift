//
//  ViewController.swift
//  ElectionAPP
//
//  Created by peppermini on 6/11/16.
//  Copyright © 2016 RMPM. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    var names = ["Adolfo", "Binho", "Casy", "Duda", "Eduardo", "Flavia", "Gustavo", "Josafah", "Klemerson", "Max", "Paulo", "Pepper", "Renan", "Sofia", "Vinicius"]
    
    var images = [UIImage(named: "Adolfo.png"), UIImage(named: "Binho.png"), UIImage(named: "Casy.png"), UIImage(named: "Duda.png"), UIImage(named: "Eduardo.png"), UIImage(named: "Flavia.png"), UIImage(named: "Gustavo.png"), UIImage(named: "Josafah.png"), UIImage(named: "Klemerson.png"), UIImage(named: "Max.png"), UIImage(named: "Paulo.png"), UIImage(named: "Pepper.png"), UIImage(named: "Renan.png"), UIImage(named: "Sofia.png"), UIImage(named: "Vinicius.png")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as UICollectionViewCell
        
        let image = cell.viewWithTag(1) as! UIImageView
        
        image.image = images[indexPath.row]
        
        let name = cell.viewWithTag(2) as! UILabel
        
        name.text = names[indexPath.row]
        
        return cell
    }

}

