//
//  ActivityViewCell.swift
//  SubView
//
//  Created by David on 14/2/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class ActivityCell: UICollectionViewCell {
    
    // Setup cellID for collectionView
    let cellId = "cellID"
    
    // Month names
    let months: [String] = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        setupViews()
    }
    
    let collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.allowsMultipleSelection = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.isScrollEnabled = false
        return cv
        
    }()
    
    let calendarIcon: UIImageView = {
        
        let ci = UIImageView()
        ci.image = UIImage(named: "calendar")
        ci.contentMode = .scaleAspectFit
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.backgroundColor = UIColor.myAppWhite
        ci.clipsToBounds = true
        ci.layer.masksToBounds = true
        ci.layer.cornerRadius = 10
        return ci
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        
    }
    
}
