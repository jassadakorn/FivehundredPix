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
    
    init() {}
}


extension CatListInteractor: CatListInteractorInputProtocol{
    func getCategoryList() {
        
    }
}
