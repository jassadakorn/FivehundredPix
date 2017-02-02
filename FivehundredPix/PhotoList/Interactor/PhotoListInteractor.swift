//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

class PhotoListInteractor: PhotoListInteractorInputProtocol
{
    weak var presenter: PhotoListInteractorOutputProtocol?
    var APIDataManager: PhotoListAPIDataManagerInputProtocol?
    var localDatamanager: PhotoListLocalDataManagerInputProtocol?
    
    init() {}
}