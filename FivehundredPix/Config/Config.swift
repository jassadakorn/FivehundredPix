//
//  Config.swift
//  FivehundredPix
//
//  Created by Jassadakorn Ketkaew on 2/4/17.
//  Copyright © 2017 Jassadakorn Ketkaew. All rights reserved.
//

import UIKit

class Config: NSObject {

    static func comsumerKey() -> String{
        if let path = Bundle.main.path(forResource: "key", ofType: "plist") ,
            let key = NSDictionary(contentsOfFile: path){
            print(key)
            return key.object(forKey: "consumer_key") as! String
        }
        return ""
    }
}
