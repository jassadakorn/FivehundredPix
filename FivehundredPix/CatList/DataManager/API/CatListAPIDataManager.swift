//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import PromiseKit


enum APIError:Error{
    case error(message:String)
}

class CatListAPIDataManager: CatListAPIDataManagerInputProtocol
{
    
    func getRecentPhotos(only catName:String, page:Int) -> Promise<PhotoList> {
        return Promise{ fulfill , reject in
            let parameter:[String:Any] =
                ["sort":"created_at",
                 "image_size":"3",
                 "include_store":"store_download",
                 "include_states":"voted",
                 "consumer_key":Config.comsumerKey(),
                 "page":page,
                 "rpp":"100",
                 "only":catName,
                 "feature":"fresh_today"]

            Alamofire.request(Router.getPhotos(parameter))
                .responseJSON(completionHandler: { response in
                    if let json = response.result.value{
                        if let photoList = Mapper<PhotoList>().map(JSONObject: json){
                            fulfill(photoList)
                        }else{
                            reject(APIError.error(message: "Can't parse json"))
                        }
                    }else{
                        reject(APIError.error(message: "response error"))
                    }
                })
        }
    }

    func getRecentPhotos() -> Promise<PhotoList> {
        return self.getRecentPhotos(only: "", page: 1)
    }
}
