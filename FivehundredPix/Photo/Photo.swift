//
//	Photo.swift
//
//	Create by admin on 2/2/2560
//	Copyright © 2560. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class Photo : NSObject, NSCoding, Mappable{

	var aperture : String?
	var camera : String?
	var category : Int?
	var collectionsCount : Int?
	var commentsCount : Int?
	var converted : Int?
	var convertedBits : Int?
	var createdAt : String?
	var cropVersion : Int?
	var descriptionField : AnyObject?
	var favoritesCount : Int?
	var focalLength : String?
	var forSale : Bool?
	var forSaleDate : AnyObject?
	var height : Int?
	var hiResUploaded : Int?
	var highestRating : Float?
	var highestRatingDate : String?
	var id : Int?
	var imageFormat : String?
	var imageUrl : String?
	var images : [Image]?
	var isFreePhoto : Bool?
	var iso : String?
	var latitude : AnyObject?
	var lens : String?
	var licenseRequestsEnabled : Bool?
	var licenseType : Int?
	var licensingRequested : Bool?
	var licensingSuggested : Bool?
	var location : AnyObject?
	var longitude : AnyObject?
	var name : String?
	var nsfw : Bool?
	var positiveVotesCount : Int?
	var privacy : Bool?
	var profile : Bool?
	var rating : Float?
	var requestToBuyEnabled : Bool?
	var salesCount : Int?
	var shutterSpeed : String?
	var status : Int?
	var storeDownload : Bool?
	var storeHeight : Int?
	var storeLicense : Bool?
	var storePrint : Bool?
	var storeWidth : Int?
	var takenAt : String?
	var timesViewed : Int?
	var url : String?
	var user : User?
	var userId : Int?
	var votesCount : Int?
	var watermark : Bool?
	var width : Int?


	class func newInstance(map: Map) -> Mappable?{
		return Photo()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		aperture <- map["aperture"]
		camera <- map["camera"]
		category <- map["category"]
		collectionsCount <- map["collections_count"]
		commentsCount <- map["comments_count"]
		converted <- map["converted"]
		convertedBits <- map["converted_bits"]
		createdAt <- map["created_at"]
		cropVersion <- map["crop_version"]
		descriptionField <- map["description"]
		favoritesCount <- map["favorites_count"]
		focalLength <- map["focal_length"]
		forSale <- map["for_sale"]
		forSaleDate <- map["for_sale_date"]
		height <- map["height"]
		hiResUploaded <- map["hi_res_uploaded"]
		highestRating <- map["highest_rating"]
		highestRatingDate <- map["highest_rating_date"]
		id <- map["id"]
		imageFormat <- map["image_format"]
		imageUrl <- map["image_url"]
		images <- map["images"]
		isFreePhoto <- map["is_free_photo"]
		iso <- map["iso"]
		latitude <- map["latitude"]
		lens <- map["lens"]
		licenseRequestsEnabled <- map["license_requests_enabled"]
		licenseType <- map["license_type"]
		licensingRequested <- map["licensing_requested"]
		licensingSuggested <- map["licensing_suggested"]
		location <- map["location"]
		longitude <- map["longitude"]
		name <- map["name"]
		nsfw <- map["nsfw"]
		positiveVotesCount <- map["positive_votes_count"]
		privacy <- map["privacy"]
		profile <- map["profile"]
		rating <- map["rating"]
		requestToBuyEnabled <- map["request_to_buy_enabled"]
		salesCount <- map["sales_count"]
		shutterSpeed <- map["shutter_speed"]
		status <- map["status"]
		storeDownload <- map["store_download"]
		storeHeight <- map["store_height"]
		storeLicense <- map["store_license"]
		storePrint <- map["store_print"]
		storeWidth <- map["store_width"]
		takenAt <- map["taken_at"]
		timesViewed <- map["times_viewed"]
		url <- map["url"]
		user <- map["user"]
		userId <- map["user_id"]
		votesCount <- map["votes_count"]
		watermark <- map["watermark"]
		width <- map["width"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         aperture = aDecoder.decodeObject(forKey: "aperture") as? String
         camera = aDecoder.decodeObject(forKey: "camera") as? String
         category = aDecoder.decodeObject(forKey: "category") as? Int
         collectionsCount = aDecoder.decodeObject(forKey: "collections_count") as? Int
         commentsCount = aDecoder.decodeObject(forKey: "comments_count") as? Int
         converted = aDecoder.decodeObject(forKey: "converted") as? Int
         convertedBits = aDecoder.decodeObject(forKey: "converted_bits") as? Int
         createdAt = aDecoder.decodeObject(forKey: "created_at") as? String
         cropVersion = aDecoder.decodeObject(forKey: "crop_version") as? Int
         descriptionField = aDecoder.decodeObject(forKey: "description") as? AnyObject
         favoritesCount = aDecoder.decodeObject(forKey: "favorites_count") as? Int
         focalLength = aDecoder.decodeObject(forKey: "focal_length") as? String
         forSale = aDecoder.decodeObject(forKey: "for_sale") as? Bool
         forSaleDate = aDecoder.decodeObject(forKey: "for_sale_date") as? AnyObject
         height = aDecoder.decodeObject(forKey: "height") as? Int
         hiResUploaded = aDecoder.decodeObject(forKey: "hi_res_uploaded") as? Int
         highestRating = aDecoder.decodeObject(forKey: "highest_rating") as? Float
         highestRatingDate = aDecoder.decodeObject(forKey: "highest_rating_date") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         imageFormat = aDecoder.decodeObject(forKey: "image_format") as? String
         imageUrl = aDecoder.decodeObject(forKey: "image_url") as? String
         images = aDecoder.decodeObject(forKey: "images") as? [Image]
         isFreePhoto = aDecoder.decodeObject(forKey: "is_free_photo") as? Bool
         iso = aDecoder.decodeObject(forKey: "iso") as? String
         latitude = aDecoder.decodeObject(forKey: "latitude") as? AnyObject
         lens = aDecoder.decodeObject(forKey: "lens") as? String
         licenseRequestsEnabled = aDecoder.decodeObject(forKey: "license_requests_enabled") as? Bool
         licenseType = aDecoder.decodeObject(forKey: "license_type") as? Int
         licensingRequested = aDecoder.decodeObject(forKey: "licensing_requested") as? Bool
         licensingSuggested = aDecoder.decodeObject(forKey: "licensing_suggested") as? Bool
         location = aDecoder.decodeObject(forKey: "location") as? AnyObject
         longitude = aDecoder.decodeObject(forKey: "longitude") as? AnyObject
         name = aDecoder.decodeObject(forKey: "name") as? String
         nsfw = aDecoder.decodeObject(forKey: "nsfw") as? Bool
         positiveVotesCount = aDecoder.decodeObject(forKey: "positive_votes_count") as? Int
         privacy = aDecoder.decodeObject(forKey: "privacy") as? Bool
         profile = aDecoder.decodeObject(forKey: "profile") as? Bool
         rating = aDecoder.decodeObject(forKey: "rating") as? Float
         requestToBuyEnabled = aDecoder.decodeObject(forKey: "request_to_buy_enabled") as? Bool
         salesCount = aDecoder.decodeObject(forKey: "sales_count") as? Int
         shutterSpeed = aDecoder.decodeObject(forKey: "shutter_speed") as? String
         status = aDecoder.decodeObject(forKey: "status") as? Int
         storeDownload = aDecoder.decodeObject(forKey: "store_download") as? Bool
         storeHeight = aDecoder.decodeObject(forKey: "store_height") as? Int
         storeLicense = aDecoder.decodeObject(forKey: "store_license") as? Bool
         storePrint = aDecoder.decodeObject(forKey: "store_print") as? Bool
         storeWidth = aDecoder.decodeObject(forKey: "store_width") as? Int
         takenAt = aDecoder.decodeObject(forKey: "taken_at") as? String
         timesViewed = aDecoder.decodeObject(forKey: "times_viewed") as? Int
         url = aDecoder.decodeObject(forKey: "url") as? String
         user = aDecoder.decodeObject(forKey: "user") as? User
         userId = aDecoder.decodeObject(forKey: "user_id") as? Int
         votesCount = aDecoder.decodeObject(forKey: "votes_count") as? Int
         watermark = aDecoder.decodeObject(forKey: "watermark") as? Bool
         width = aDecoder.decodeObject(forKey: "width") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if aperture != nil{
			aCoder.encode(aperture, forKey: "aperture")
		}
		if camera != nil{
			aCoder.encode(camera, forKey: "camera")
		}
		if category != nil{
			aCoder.encode(category, forKey: "category")
		}
		if collectionsCount != nil{
			aCoder.encode(collectionsCount, forKey: "collections_count")
		}
		if commentsCount != nil{
			aCoder.encode(commentsCount, forKey: "comments_count")
		}
		if converted != nil{
			aCoder.encode(converted, forKey: "converted")
		}
		if convertedBits != nil{
			aCoder.encode(convertedBits, forKey: "converted_bits")
		}
		if createdAt != nil{
			aCoder.encode(createdAt, forKey: "created_at")
		}
		if cropVersion != nil{
			aCoder.encode(cropVersion, forKey: "crop_version")
		}
		if descriptionField != nil{
			aCoder.encode(descriptionField, forKey: "description")
		}
		if favoritesCount != nil{
			aCoder.encode(favoritesCount, forKey: "favorites_count")
		}
		if focalLength != nil{
			aCoder.encode(focalLength, forKey: "focal_length")
		}
		if forSale != nil{
			aCoder.encode(forSale, forKey: "for_sale")
		}
		if forSaleDate != nil{
			aCoder.encode(forSaleDate, forKey: "for_sale_date")
		}
		if height != nil{
			aCoder.encode(height, forKey: "height")
		}
		if hiResUploaded != nil{
			aCoder.encode(hiResUploaded, forKey: "hi_res_uploaded")
		}
		if highestRating != nil{
			aCoder.encode(highestRating, forKey: "highest_rating")
		}
		if highestRatingDate != nil{
			aCoder.encode(highestRatingDate, forKey: "highest_rating_date")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if imageFormat != nil{
			aCoder.encode(imageFormat, forKey: "image_format")
		}
		if imageUrl != nil{
			aCoder.encode(imageUrl, forKey: "image_url")
		}
		if images != nil{
			aCoder.encode(images, forKey: "images")
		}
		if isFreePhoto != nil{
			aCoder.encode(isFreePhoto, forKey: "is_free_photo")
		}
		if iso != nil{
			aCoder.encode(iso, forKey: "iso")
		}
		if latitude != nil{
			aCoder.encode(latitude, forKey: "latitude")
		}
		if lens != nil{
			aCoder.encode(lens, forKey: "lens")
		}
		if licenseRequestsEnabled != nil{
			aCoder.encode(licenseRequestsEnabled, forKey: "license_requests_enabled")
		}
		if licenseType != nil{
			aCoder.encode(licenseType, forKey: "license_type")
		}
		if licensingRequested != nil{
			aCoder.encode(licensingRequested, forKey: "licensing_requested")
		}
		if licensingSuggested != nil{
			aCoder.encode(licensingSuggested, forKey: "licensing_suggested")
		}
		if location != nil{
			aCoder.encode(location, forKey: "location")
		}
		if longitude != nil{
			aCoder.encode(longitude, forKey: "longitude")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if nsfw != nil{
			aCoder.encode(nsfw, forKey: "nsfw")
		}
		if positiveVotesCount != nil{
			aCoder.encode(positiveVotesCount, forKey: "positive_votes_count")
		}
		if privacy != nil{
			aCoder.encode(privacy, forKey: "privacy")
		}
		if profile != nil{
			aCoder.encode(profile, forKey: "profile")
		}
		if rating != nil{
			aCoder.encode(rating, forKey: "rating")
		}
		if requestToBuyEnabled != nil{
			aCoder.encode(requestToBuyEnabled, forKey: "request_to_buy_enabled")
		}
		if salesCount != nil{
			aCoder.encode(salesCount, forKey: "sales_count")
		}
		if shutterSpeed != nil{
			aCoder.encode(shutterSpeed, forKey: "shutter_speed")
		}
		if status != nil{
			aCoder.encode(status, forKey: "status")
		}
		if storeDownload != nil{
			aCoder.encode(storeDownload, forKey: "store_download")
		}
		if storeHeight != nil{
			aCoder.encode(storeHeight, forKey: "store_height")
		}
		if storeLicense != nil{
			aCoder.encode(storeLicense, forKey: "store_license")
		}
		if storePrint != nil{
			aCoder.encode(storePrint, forKey: "store_print")
		}
		if storeWidth != nil{
			aCoder.encode(storeWidth, forKey: "store_width")
		}
		if takenAt != nil{
			aCoder.encode(takenAt, forKey: "taken_at")
		}
		if timesViewed != nil{
			aCoder.encode(timesViewed, forKey: "times_viewed")
		}
		if url != nil{
			aCoder.encode(url, forKey: "url")
		}
		if user != nil{
			aCoder.encode(user, forKey: "user")
		}
		if userId != nil{
			aCoder.encode(userId, forKey: "user_id")
		}
		if votesCount != nil{
			aCoder.encode(votesCount, forKey: "votes_count")
		}
		if watermark != nil{
			aCoder.encode(watermark, forKey: "watermark")
		}
		if width != nil{
			aCoder.encode(width, forKey: "width")
		}

	}

}