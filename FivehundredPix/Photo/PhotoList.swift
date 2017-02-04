//
//	PhotoList.swift
//
//	Create by admin on 2/2/2560
//	Copyright © 2560. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class PhotoList : NSObject, NSCoding, Mappable{

	var currentPage : Int?
	var feature : String?
	var filters : Filter?
	var photos : [Photo]?
	var totalItems : Int?
	var totalPages : Int?


	class func newInstance(map: Map) -> Mappable?{
		return PhotoList()
	}
	required init?(map: Map){}
    override init(){}

	func mapping(map: Map)
	{
		currentPage <- map["current_page"]
		feature <- map["feature"]
		filters <- map["filters"]
		photos <- map["photos"]
		totalItems <- map["total_items"]
		totalPages <- map["total_pages"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         currentPage = aDecoder.decodeObject(forKey: "current_page") as? Int
         feature = aDecoder.decodeObject(forKey: "feature") as? String
         filters = aDecoder.decodeObject(forKey: "filters") as? Filter
         photos = aDecoder.decodeObject(forKey: "photos") as? [Photo]
         totalItems = aDecoder.decodeObject(forKey: "total_items") as? Int
         totalPages = aDecoder.decodeObject(forKey: "total_pages") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if currentPage != nil{
			aCoder.encode(currentPage, forKey: "current_page")
		}
		if feature != nil{
			aCoder.encode(feature, forKey: "feature")
		}
		if filters != nil{
			aCoder.encode(filters, forKey: "filters")
		}
		if photos != nil{
			aCoder.encode(photos, forKey: "photos")
		}
		if totalItems != nil{
			aCoder.encode(totalItems, forKey: "total_items")
		}
		if totalPages != nil{
			aCoder.encode(totalPages, forKey: "total_pages")
		}

	}

}
