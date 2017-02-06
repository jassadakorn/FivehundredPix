//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

class ImagePopupWireFrame: ImagePopupWireFrameProtocol
{
    class func presentImagePopupModule(fromView view: AnyObject)
    {
        // Generating module components
        var view: ImagePopupViewProtocol = ImagePopupView()
        var presenter: protocol<ImagePopupPresenterProtocol, ImagePopupInteractorOutputProtocol> = ImagePopupPresenter()
        var interactor: ImagePopupInteractorInputProtocol = ImagePopupInteractor()
        var APIDataManager: ImagePopupAPIDataManagerInputProtocol = ImagePopupAPIDataManager()
        var localDataManager: ImagePopupLocalDataManagerInputProtocol = ImagePopupLocalDataManager()
        var wireFrame: ImagePopupWireFrameProtocol = ImagePopupWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
    }
}