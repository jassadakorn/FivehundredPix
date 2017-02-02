//
//	Default.swift
//
//	Create by admin on 2/2/2560
//	Copyright © 2560. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class Default : NSObject, NSCoding, Mappable{

	var https : String?


	class func newInstance(map: Map) -> Mappable?{
		return Default()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		https <- map["https"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         https = aDecoder.decodeObject(forKey: "https") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if https != nil{
			aCoder.encode(https, forKey: "https")
		}

	}

}