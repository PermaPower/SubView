//
//  ViewController.swift
//  SubView
//
//  Created by David on 14/2/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class PlantDetailsViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellIdentifier = "CellID"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Home"
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.row {
        
        case 0:
            collectionView.register(ActivityCell.self, forCellWithReuseIdentifier: cellIdentifier)
            
        default:
            collectionView.register(ActivityCell.self, forCellWithReuseIdentifier: cellIdentifier)
            
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


