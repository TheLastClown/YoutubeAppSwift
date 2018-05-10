//
//  Video.swift
//  youtube
//
//  Created by iClown on 16/10/17.
//  Copyright © 2017 iclown. All rights reserved.
//

import UIKit

class Video : NSObject {
    var thumbnailImage : String?
    var title : String?
    
    var channel : Channel?
    
    var numberOfViews : NSNumber?
    var uploadDate : NSDate?
    
}

class Channel : NSObject {
    var profileImage : String?
    var channelName : String?
}
