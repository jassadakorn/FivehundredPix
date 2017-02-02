//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

class CatListPresenter
{
    weak var view: CatListViewProtocol?
    var interactor: CatListInteractorInputProtocol?
    var wireFrame: CatListWireFrameProtocol?
    
    
}

extension CatListPresenter: CatListPresenterProtocol{
    func viewDidload() {
        
    }
}

extension CatListPresenter: CatListInteractorOutputProtocol{
    
}
