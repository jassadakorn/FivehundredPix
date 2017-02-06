//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

class ImagePopupInteractor: ImagePopupInteractorInputProtocol
{
    weak var presenter: ImagePopupInteractorOutputProtocol?
    var APIDataManager: ImagePopupAPIDataManagerInputProtocol?
    var localDatamanager: ImagePopupLocalDataManagerInputProtocol?
    
    init() {}
}