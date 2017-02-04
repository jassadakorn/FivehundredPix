//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import PromiseKit

class PhotoListAPIDataManager: PhotoListAPIDataManagerInputProtocol
{
    let api = CatListAPIDataManager()


    func getPhotoList(only catName:String ,page: Int) -> Promise<PhotoList>{
        return Promise { fulfill , reject in
            api.getRecentPhotos(only: catName, page: page).then { photoLis -> Void in
                fulfill(photoLis)
            }.catch { error in
                reject(error)
            }
        }
    }


}
