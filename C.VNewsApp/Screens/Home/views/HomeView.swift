//
//  HomeView.swift
//  C.VNewsApp
//
//  Created by Cledmir on 12/2/18.
//  Copyright © 2018 Cledmir. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class Homeview : UIView
{
    let tableView = UITableView()
    
    override init(frame : CGRect)
    {
        super.init(frame: frame)
        addSubview(tableView)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been inplemented")
    }
    
    func setupLayout()//this function will create a table view, basically a top layer
    {
        tableView.snp.makeConstraints
        {
            make in
            make.edges.equalTo(self)
        }
        
        
    }
}
