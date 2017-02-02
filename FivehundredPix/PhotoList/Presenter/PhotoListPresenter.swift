//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

class PhotoListPresenter: PhotoListPresenterProtocol, PhotoListInteractorOutputProtocol
{
    weak var view: PhotoListViewProtocol?
    var interactor: PhotoListInteractorInputProtocol?
    var wireFrame: PhotoListWireFrameProtocol?
    
    init() {}
}