//
//  VideoCell.swift
//  youtube
//
//  Created by C02STFGVFVH3 on 11/10/17.
//  Copyright © 2017 iclown. All rights reserved.
//

import UIKit

class VideoCell : UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame:frame)
        setupViews()
    }
    
    let separatorView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1 )
        return view
    }()
    
    let profileImageUserView : UIImageView = {
        let imageView = UIImageView()
        //        imageView.backgroundColor  = UIColor.green
        imageView.image = UIImage(named: "imageProfile1")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 22
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let thumbnailImageView : UIImageView = {
        let imageView = UIImageView()
        //        imageView.backgroundColor  = UIColor.blue
        imageView.image = UIImage(named: "thumbnail1")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let titleLabel : UILabel = {
        let label = UILabel()
        //        label.backgroundColor = UIColor.purple
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Juan Vargas - YouTube Swift3 APP"
        return label
    }()
    
    let subTitleLabel : UITextView = {
        let label = UITextView()
        //        label.backgroundColor = UIColor.red
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "JuanVargasVEVO - 1,604,689,203 views - 2 years"
        label.textContainerInset = UIEdgeInsetsMake(0, -4, 0, 0)
        label.textColor = UIColor.lightGray
        
        return label
    }()
    
    func setupViews(){
        addSubview(thumbnailImageView)
        addSubview(separatorView)
        addSubview(profileImageUserView)
        addSubview(titleLabel)
        addSubview(subTitleLabel)
        
        
        //Horizontal constraints
        
        addConstraintsWithFormat(format:  "H:|-16-[v0]-16-|", views: thumbnailImageView)
        
        addConstraintsWithFormat(format:  "H:|-16-[v0(44)]|", views: profileImageUserView)
        
        addConstraintsWithFormat(format: "H:|[v0]|", views: separatorView)
        
        
        //vertical constraints
        
        addConstraintsWithFormat(format:  "V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", views: thumbnailImageView,profileImageUserView,separatorView)
        
        //Top Constraint
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: thumbnailImageView, attribute: .bottom, multiplier: 1, constant: 8))
        
        //Left Constraint
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: profileImageUserView, attribute: .right, multiplier: 1, constant: 8))
        
        //Right Constraint
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        
        //Height Constraint
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
        
        
        //Top Constraint
        addConstraint(NSLayoutConstraint(item: subTitleLabel, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 4))
        
        //Left Constraint
        addConstraint(NSLayoutConstraint(item: subTitleLabel, attribute: .left, relatedBy: .equal, toItem: profileImageUserView, attribute: .right, multiplier: 1, constant: 8))
        
        //Right Constraint
        addConstraint(NSLayoutConstraint(item: subTitleLabel, attribute: .right, relatedBy: .equal, toItem: titleLabel , attribute: .right, multiplier: 1, constant: 0))
        
        //Height Constraint
        addConstraint(NSLayoutConstraint(item: subTitleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))
        
        thumbnailImageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}




 
