//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

class ImagePopupPresenter: ImagePopupPresenterProtocol, ImagePopupInteractorOutputProtocol
{
    weak var view: ImagePopupViewProtocol?
    var interactor: ImagePopupInteractorInputProtocol?
    var wireFrame: ImagePopupWireFrameProtocol?
    
    init() {}
}