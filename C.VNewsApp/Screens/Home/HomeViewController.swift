//
//  HomeViewController.swift
//  C.VNewsApp
//
//  Created by Cledmir on 12/2/18.
//  Copyright © 2018 Cledmir. All rights reserved.
//

//This will download the data to show on the app

import Foundation
import UIKit

class HomeViewController: UIViewController
{
    var homeViews : Homeview {return self.view as! Homeview}
    
    override func loadView()
    {
        self.view = Homeview()
    }
    
    override func viewDidLoad()
    {
        title = "Recent News"
        setupTableView()
    }
    
    func setupTableView()
    {
        homeViews.tableView.delegate = self
        homeViews.tableView.dataSource = self
    }
    
   
}

extension HomeViewController : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}




extension HomeViewController : UITableViewDelegate
{
    func tableView(_ tableView : UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }
    
    func tableView(_ tableView : UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
            return 100.0
    }
}
