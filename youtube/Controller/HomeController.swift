//
//  ViewController.swift
//  youtube
//
//  Created by C02STFGVFVH3 on 11/10/17.
//  Copyright © 2017 iclown. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var videos : [Video] = {
        
        var juanpitoChannel = Channel()
        juanpitoChannel.channelName = "JuanPito200"
        juanpitoChannel.profileImage = "juanpito200"
        
        var blankSpaceVideo = Video()
        blankSpaceVideo.title = "Taylor Swift - Blank Space"
        blankSpaceVideo.thumbnailImage = "thumbnail1"
        blankSpaceVideo.channel = juanpitoChannel
        blankSpaceVideo.numberOfViews = 1123899123
        
        var invisibleVideo = Video()
        invisibleVideo.title = "Linking Park - ALEXANDRA TE AMO MUCHO"
        invisibleVideo.thumbnailImage = "invisible"
        invisibleVideo.channel = juanpitoChannel
        blankSpaceVideo.numberOfViews = 15123232123

        
        return [blankSpaceVideo,invisibleVideo]
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Home"
    
        collectionView?.backgroundColor = UIColor.white
        collectionView?.contentInset = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
        collectionView?.scrollIndicatorInsets = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
        
        collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "cellId")
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        titleLabel.text = "Home"
        titleLabel.textColor = UIColor.white
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        
        navigationItem.titleView = titleLabel
        navigationController?.navigationBar.isTranslucent = false
        
        setupMenuBar()
        setupNavBarButtons()

    }
    
   func scaleImageToSize(img: UIImage, size: CGSize) -> UIImage{
        
        UIGraphicsBeginImageContext(size)
        img.draw(in: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
        let scaledImg = UIGraphicsGetImageFromCurrentImageContext()
        
        return scaledImg!
    }
    
    func setupNavBarButtons(){
        let searchImage = scaleImageToSize(img: UIImage(named:"search")!, size: CGSize(width: 25, height: 25))
        
        let searchButtonItem = UIBarButtonItem(image: searchImage, style: .done, target: self, action: #selector(handleSearch))
        
        let menuImage = scaleImageToSize(img: UIImage(named:"nav_more")!, size: CGSize(width: 25, height: 25))
        
        let menuButtonItem = UIBarButtonItem(image: menuImage, style: .plain, target: self, action: #selector(handleOptions))
       
        navigationItem.rightBarButtonItems = [menuButtonItem, searchButtonItem]
    }
    
    @objc func handleSearch(){
        print(123)
    }
    
    @objc func handleOptions(){
        print(321)
    }
    
    let menuBar : MenuBar = {
        let mb = MenuBar()
        return mb
    }()
    
    private func setupMenuBar(){
        view.addSubview(menuBar)
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: menuBar)
        view.addConstraintsWithFormat(format: "V:|[v0(50)]", views: menuBar)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! VideoCell
        
        cell.video = videos[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = (view.frame.width  - 32 ) * 9/16
        return CGSize(width: view.frame.width, height: height + 16 + 68)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}



