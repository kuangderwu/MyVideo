//
//  MyVideoView.swift
//  MyVideo
//
//  Created by apple on 2018/10/10.
//  Copyright © 2018 Kuang-Der Wu. All rights reserved.
//

import UIKit

class MyVideoView: UIView {

    var tableView: UITableView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        
        self.backgroundColor = UIColor.green
        
        tableView = {
            let table = UITableView()
            table.separatorStyle = .none
            table.register(UITableViewCell.self, forCellReuseIdentifier: "VideoCell")
            return table
        }()
        self.addSubview(tableView)
        tableView.frame = self.bounds
    
    }

}
