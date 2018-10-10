//
//  MyVideoCell.swift
//  MyVideo
//
//  Created by apple on 2018/10/10.
//  Copyright © 2018 Kuang-Der Wu. All rights reserved.
//

import UIKit

class MyVideoCell: UITableViewCell {
    

    var video: Video? {
        didSet {
            thumbnailImageView.image = UIImage(named:(video?.thumbnailFileName)!)
            authorNameLabel.text = video?.authorName
        }
    }
    
    var thumbnailImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 8
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    var playImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "btn-play"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = UIColor.clear
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var authorNameLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.clear
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        
       addSubview(thumbnailImageView)
       addSubview(playImageView)
       addSubview(authorNameLabel)
        
        NSLayoutConstraint.activate([
            thumbnailImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            thumbnailImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            thumbnailImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            thumbnailImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8)
            ])
        
        NSLayoutConstraint.activate([
            playImageView.leadingAnchor.constraint(equalTo: thumbnailImageView.leadingAnchor),
            playImageView.bottomAnchor.constraint(equalTo: thumbnailImageView.bottomAnchor),
            playImageView.widthAnchor.constraint(equalToConstant: 64),
            playImageView.heightAnchor.constraint(equalToConstant: 64)
            ])
        
        NSLayoutConstraint.activate([
            authorNameLabel.topAnchor.constraint(equalTo: playImageView.topAnchor, constant: 8),
            authorNameLabel.bottomAnchor.constraint(equalTo: playImageView.bottomAnchor, constant: -4),
            authorNameLabel.leadingAnchor.constraint(equalTo: playImageView.trailingAnchor, constant: 4),
            authorNameLabel.trailingAnchor.constraint(equalTo: thumbnailImageView.trailingAnchor)
            ])
    }

}
