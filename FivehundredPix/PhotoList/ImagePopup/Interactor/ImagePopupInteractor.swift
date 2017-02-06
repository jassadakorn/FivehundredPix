//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

class ImagePopupInteractor
{
    weak var presenter: ImagePopupInteractorOutputProtocol?
    var APIDataManager: ImagePopupAPIDataManagerInputProtocol?
    var localDatamanager: ImagePopupLocalDataManagerInputProtocol?
    var photoList: [Photo]?
    var selectedIndex: Int?


}

extension ImagePopupInteractor: ImagePopupInteractorInputProtocol{
    func getPhotoList() {
        if let photoList = self.photoList , let selectedIndex = self.selectedIndex{
            presenter?.didGetPhotoList(with: selectedIndex, photoList: photoList)
        }
    }
}
