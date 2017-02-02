//
//	Filter.swift
//
//	Create by admin on 2/2/2560
//	Copyright © 2560. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class Filter : NSObject, NSCoding, Mappable{

	var category : Bool?
	var exclude : Bool?


	class func newInstance(map: Map) -> Mappable?{
		return Filter()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		category <- map["category"]
		exclude <- map["exclude"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         category = aDecoder.decodeObject(forKey: "category") as? Bool
         exclude = aDecoder.decodeObject(forKey: "exclude") as? Bool

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if category != nil{
			aCoder.encode(category, forKey: "category")
		}
		if exclude != nil{
			aCoder.encode(exclude, forKey: "exclude")
		}

	}

}