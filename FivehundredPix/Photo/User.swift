//
//	User.swift
//
//	Create by admin on 2/2/2560
//	Copyright © 2560. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class User : NSObject, NSCoding, Mappable{

	var affection : Int?
	var avatars : Avatar?
	var city : String?
	var country : String?
	var coverUrl : String?
	var firstname : String?
	var fullname : String?
	var id : Int?
	var lastname : String?
	var storeOn : Bool?
	var upgradeStatus : Int?
	var username : String?
	var userpicHttpsUrl : String?
	var userpicUrl : String?
	var usertype : Int?


	class func newInstance(map: Map) -> Mappable?{
		return User()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		affection <- map["affection"]
		avatars <- map["avatars"]
		city <- map["city"]
		country <- map["country"]
		coverUrl <- map["cover_url"]
		firstname <- map["firstname"]
		fullname <- map["fullname"]
		id <- map["id"]
		lastname <- map["lastname"]
		storeOn <- map["store_on"]
		upgradeStatus <- map["upgrade_status"]
		username <- map["username"]
		userpicHttpsUrl <- map["userpic_https_url"]
		userpicUrl <- map["userpic_url"]
		usertype <- map["usertype"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         affection = aDecoder.decodeObject(forKey: "affection") as? Int
         avatars = aDecoder.decodeObject(forKey: "avatars") as? Avatar
         city = aDecoder.decodeObject(forKey: "city") as? String
         country = aDecoder.decodeObject(forKey: "country") as? String
         coverUrl = aDecoder.decodeObject(forKey: "cover_url") as? String
         firstname = aDecoder.decodeObject(forKey: "firstname") as? String
         fullname = aDecoder.decodeObject(forKey: "fullname") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         lastname = aDecoder.decodeObject(forKey: "lastname") as? String
         storeOn = aDecoder.decodeObject(forKey: "store_on") as? Bool
         upgradeStatus = aDecoder.decodeObject(forKey: "upgrade_status") as? Int
         username = aDecoder.decodeObject(forKey: "username") as? String
         userpicHttpsUrl = aDecoder.decodeObject(forKey: "userpic_https_url") as? String
         userpicUrl = aDecoder.decodeObject(forKey: "userpic_url") as? String
         usertype = aDecoder.decodeObject(forKey: "usertype") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if affection != nil{
			aCoder.encode(affection, forKey: "affection")
		}
		if avatars != nil{
			aCoder.encode(avatars, forKey: "avatars")
		}
		if city != nil{
			aCoder.encode(city, forKey: "city")
		}
		if country != nil{
			aCoder.encode(country, forKey: "country")
		}
		if coverUrl != nil{
			aCoder.encode(coverUrl, forKey: "cover_url")
		}
		if firstname != nil{
			aCoder.encode(firstname, forKey: "firstname")
		}
		if fullname != nil{
			aCoder.encode(fullname, forKey: "fullname")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if lastname != nil{
			aCoder.encode(lastname, forKey: "lastname")
		}
		if storeOn != nil{
			aCoder.encode(storeOn, forKey: "store_on")
		}
		if upgradeStatus != nil{
			aCoder.encode(upgradeStatus, forKey: "upgrade_status")
		}
		if username != nil{
			aCoder.encode(username, forKey: "username")
		}
		if userpicHttpsUrl != nil{
			aCoder.encode(userpicHttpsUrl, forKey: "userpic_https_url")
		}
		if userpicUrl != nil{
			aCoder.encode(userpicUrl, forKey: "userpic_url")
		}
		if usertype != nil{
			aCoder.encode(usertype, forKey: "usertype")
		}

	}

}