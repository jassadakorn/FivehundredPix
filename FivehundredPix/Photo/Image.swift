//
//	Image.swift
//
//	Create by admin on 2/2/2560
//	Copyright © 2560. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class Image : NSObject, NSCoding, Mappable{

	var format : String?
	var httpsUrl : String?
	var size : Int?
	var url : String?


	class func newInstance(map: Map) -> Mappable?{
		return Image()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		format <- map["format"]
		httpsUrl <- map["https_url"]
		size <- map["size"]
		url <- map["url"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         format = aDecoder.decodeObject(forKey: "format") as? String
         httpsUrl = aDecoder.decodeObject(forKey: "https_url") as? String
         size = aDecoder.decodeObject(forKey: "size") as? Int
         url = aDecoder.decodeObject(forKey: "url") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if format != nil{
			aCoder.encode(format, forKey: "format")
		}
		if httpsUrl != nil{
			aCoder.encode(httpsUrl, forKey: "https_url")
		}
		if size != nil{
			aCoder.encode(size, forKey: "size")
		}
		if url != nil{
			aCoder.encode(url, forKey: "url")
		}

	}

}