//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit

class PhotoListPresenter: PhotoListPresenterProtocol, PhotoListInteractorOutputProtocol
{
    weak var view: PhotoListViewProtocol?
    var interactor: PhotoListInteractorInputProtocol?
    var wireFrame: PhotoListWireFrameProtocol?
    
    func viewDidLoad() {
        interactor?.getDefaultPhotoList()
    }

    func getPhotoList(only catName: String, page: Int) {
        interactor?.getPhotoList(only: catName, page: page)
    }


    func didGetDefaultPhotoList(photoList: [Photo], catName:String) {
        view?.didGetDefaultPhotoList(photoList: photoList, catName:catName)
    }

    func didGetPhotoList(photoList: [Photo]) {
        view?.didGetPhotoList(photoList: photoList)
    }

    

    
}
