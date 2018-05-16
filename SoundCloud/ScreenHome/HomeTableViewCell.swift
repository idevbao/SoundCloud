//
//  HomeTableViewCell.swift
//  SoundCloud
//
//  Created by nguyen.van.bao on 15/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    var collectionViewHome: HomeCollectionView!
    
    init() {
        super.init(style: .default, reuseIdentifier: "TBCell")
        
        // MARK:  HomeCollectionView
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 5)
        layout.minimumLineSpacing = 5
        layout.itemSize = CGSize(width: 91, height: 91)
        layout.scrollDirection = .horizontal
        
        collectionViewHome = HomeCollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        // MARK:  Cell_HomeCollectionView
        collectionViewHome.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CCell")
        collectionViewHome.backgroundColor = .lightGray
        collectionViewHome.showsHorizontalScrollIndicator = false
        
        contentView.addSubview(self.collectionViewHome)
        
        layoutMargins = UIEdgeInsetsMake(10, 0, 10, 0)
   
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK:  set delegate datasource cho HomeviewCtroller
    
    func setCollectionViewDataSourceDelegate(dataSourceDelegate delegate: UICollectionViewDelegate & UICollectionViewDataSource, index: NSInteger) {
        collectionViewHome.dataSource = delegate
        collectionViewHome.delegate = delegate
        
        collectionViewHome.reloadData()
    }
}



