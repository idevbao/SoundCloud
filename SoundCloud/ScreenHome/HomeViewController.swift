//
//  HomeViewController.swift
//  SoundCloud
//
//  Created by nguyen.van.bao on 15/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    var tableViewHome:UITableView!
    var collectionViewHome: UICollectionView!
    var cell: HomeTableViewCell?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewHome = UITableView.init(frame: self.view.frame)
        tableViewHome.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(tableViewHome)
        
        tableViewHome.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        tableViewHome.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1).isActive = true
        tableViewHome.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        tableViewHome.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        self.tableViewHome.delegate = self
        self.tableViewHome.dataSource = self
    }
    
    // MARK: - UITableViewDataSource. UITableViewDelegate
    
    
}
extension HomeViewController: UITableViewDataSource,UITableViewDelegate{
    
    //UICollectionViewDelegate,UICollectionViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        cell = tableView.dequeueReusableCell(withIdentifier: "TBCell") as? HomeTableViewCell
        if cell == nil {
            cell =  HomeTableViewCell.init()
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let heightNavigation = navigationController?.navigationBar.frame.size.height
        let heighttabBarItem =  tabBarController?.tabBar.frame.size.height
        return (self.view.frame.size.height - (heighttabBarItem! + heightNavigation!))/3
    }
    
//    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        let collectionCell  = cell as! HomeTableViewCell
//        
//        collectionCell.setCollectionViewDataSourceDelegate(dataSourceDelegate: self, index: (indexPath as NSIndexPath).row)
//        
//        // MARK: - UICollectionViewDelegate. UICollectionViewDataSource
//    }
    
    
    
}





