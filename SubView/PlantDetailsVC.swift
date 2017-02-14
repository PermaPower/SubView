//
//  ViewController.swift
//  SubView
//
//  Created by David on 14/2/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class PlantDetailsViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView?.collectionViewLayout.invalidateLayout()
    }
    
    let cellIdentifier = "CellID"
    let style = Style.myApp
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Home"
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 400)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.row {
        
        case 0:
            collectionView.register(ActivityCollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        case 1:
            collectionView.register(RedViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
            
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


