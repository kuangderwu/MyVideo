//
//  MyVideoVC.swift
//  MyVideo
//
//  Created by apple on 2018/10/10.
//  Copyright © 2018 Kuang-Der Wu. All rights reserved.
//

import UIKit

class MyVideoVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var myVideoView: MyVideoView!
    var tableView: UITableView!
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        title = "Team Wallie"
        tableView.delegate = self
        tableView.dataSource = self
        videos = Video.fetchVideos()
    }
    
    
    func configure() {
        
        myVideoView = MyVideoView(frame: view.frame)
        view.addSubview(myVideoView)
        tableView = myVideoView.tableView
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! MyVideoCell
        cell.video = videos[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("\(videos[indexPath.row].videoFileName)")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
