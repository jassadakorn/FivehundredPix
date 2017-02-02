//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import PromiseKit
import SVProgressHUD

enum APIError:Error{
    case error(message:String)
}

class CatListAPIDataManager: CatListAPIDataManagerInputProtocol
{
    
    func getRecentPhotos() -> Promise<PhotoList> {
        return Promise{ fulfill , reject in
            let parameter:[String:Any] =
                ["sort":"created_at",
                 "image_size":"3",
                 "include_store":"store_download",
                 "include_states":"voted",
                 "consumer_key":"TYTmRjKWO0LXRS2ZJNvmTezvHVVewZg8mzE7ttfs",
                 "page":"1",
                 "feature":"fresh_today"]
            SVProgressHUD.show()
            Alamofire.request(Router.CreateUser(parameter as [String : AnyObject]))
                .responseJSON(completionHandler: { response in
                    SVProgressHUD.dismiss()
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
}
