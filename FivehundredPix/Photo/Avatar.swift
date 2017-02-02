//
//	Avatar.swift
//
//	Create by admin on 2/2/2560
//	Copyright © 2560. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class Avatar : NSObject, NSCoding, Mappable{

	var defaultField : Default?
	var large : Default?
	var small : Default?
	var tiny : Default?


	class func newInstance(map: Map) -> Mappable?{
		return Avatar()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		defaultField <- map["default"]
		large <- map["large"]
		small <- map["small"]
		tiny <- map["tiny"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         defaultField = aDecoder.decodeObject(forKey: "default") as? Default
         large = aDecoder.decodeObject(forKey: "large") as? Default
         small = aDecoder.decodeObject(forKey: "small") as? Default
         tiny = aDecoder.decodeObject(forKey: "tiny") as? Default

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if defaultField != nil{
			aCoder.encode(defaultField, forKey: "default")
		}
		if large != nil{
			aCoder.encode(large, forKey: "large")
		}
		if small != nil{
			aCoder.encode(small, forKey: "small")
		}
		if tiny != nil{
			aCoder.encode(tiny, forKey: "tiny")
		}

	}

}