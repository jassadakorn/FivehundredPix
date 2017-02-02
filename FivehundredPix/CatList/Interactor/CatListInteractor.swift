//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

class CatListInteractor
{
    weak var presenter: CatListInteractorOutputProtocol?
    var APIDataManager: CatListAPIDataManagerInputProtocol?
    var localDatamanager: CatListLocalDataManagerInputProtocol?
    
    func createPhotoCatArray() -> CategoryList{
        var catList = CategoryList()
        if let path = Bundle.main.path(forResource: "CategoryList", ofType: "plist") ,
           let categoryList = NSArray(contentsOfFile: path){
            for category in categoryList as! Array<Dictionary<String,String>>{
                var cat = Category()
                cat.id = category["id"]!
                cat.name = category["name"]!
                catList.list.append(cat)
            }
            return catList
        }
        return CategoryList()
    }
}


extension CatListInteractor: CatListInteractorInputProtocol{
    func getCategoryList() {
        APIDataManager!.getRecentPhotos().then { photoList -> Void in
            self.presenter!.didGetPhotoList(photos: photoList.photos!)
            self.presenter?.didGetCategoryList(catList: self.createPhotoCatArray())
        }.catch { error in
            print(error)
        }
    }
}


