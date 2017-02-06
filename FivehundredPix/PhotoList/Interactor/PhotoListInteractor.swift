//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit

class PhotoListInteractor: PhotoListInteractorInputProtocol
{
    var defaultPhoto: [Photo]?
    var catName: String?
    weak var presenter: PhotoListInteractorOutputProtocol?
    var APIDataManager: PhotoListAPIDataManagerInputProtocol?
    var localDatamanager: PhotoListLocalDataManagerInputProtocol?


    func getDefaultPhotoList() {
        presenter?.didGetDefaultPhotoList(photoList: self.defaultPhoto! ,catName: self.catName!)
    }

    func getPhotoList(only catName: String, page: Int) {
        APIDataManager?.getPhotoList(only: catName, page: page).then { photoList -> Void in
            if let presenter = self.presenter{
                presenter.didGetPhotoList(photoList: photoList.photos!)
            }
        }.catch { error in

        }
    }

    func beginRefresh(only catName: String, refresh: UIRefreshControl) {
        APIDataManager?.getPhotoList(only: catName, page: 1).then { photoList -> Void in
            if let presenter = self.presenter{
                presenter.didFinishedRefresh(with: photoList.photos!, refresh: refresh)
            }
        }.catch { error in

        }
    }
}
