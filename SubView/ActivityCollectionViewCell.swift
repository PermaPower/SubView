//
//  ActivityCollectionViewCell.swift
//  SubView
//
//  Created by David on 14/2/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class ActivityCollectionViewCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    
    private let cellId = "cell"
    
    // Month names
    let months: [String] = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        
        }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let appsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    

    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // Divide the collectionview by 6 x 2
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let columns = 6
        let margings = 2 * (columns - 1)
        let width = (collectionView.frame.size.width - CGFloat(margings)) / CGFloat(columns)
        let height = width // square cells
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        
        
        let textLabel = UILabel(frame: .zero)
        
        textLabel.textColor = UIColor.myAppWhite
        textLabel.adjustsFontSizeToFitWidth = true
        textLabel.textAlignment = .center
        textLabel.layer.cornerRadius = 10
        textLabel.layer.borderWidth = 1
        textLabel.layer.borderColor = UIColor.myAppWhite.cgColor
        textLabel.layer.masksToBounds = true
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.text = months[indexPath.row]
        
        cell.contentView.addSubview(textLabel)
        
        cell.addConstraintsWithFormat(format: "H:|[v0]|", views: textLabel)
        cell.addConstraintsWithFormat(format: "V:|[v0]|", views: textLabel)
        
        
        return cell
    }
    
    func setupViews() {
        
        self.addSubview(appsCollectionView)
        
        appsCollectionView.delegate = self
        appsCollectionView.dataSource = self
        
        appsCollectionView.register(AppCell.self, forCellWithReuseIdentifier: cellId)
        addConstraintsWithFormat(format: "H:|[v0]|", views: appsCollectionView)
        addConstraintsWithFormat(format: "V:|[v0]|", views: appsCollectionView)
    }
    
    
}

class AppCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
