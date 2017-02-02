//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

class PhotoListWireFrame: PhotoListWireFrameProtocol
{
    class func presentPhotoListModule(fromView view: AnyObject)
    {
        // Generating module components
        var view: PhotoListViewProtocol = PhotoListView()
        var presenter: protocol<PhotoListPresenterProtocol, PhotoListInteractorOutputProtocol> = PhotoListPresenter()
        var interactor: PhotoListInteractorInputProtocol = PhotoListInteractor()
        var APIDataManager: PhotoListAPIDataManagerInputProtocol = PhotoListAPIDataManager()
        var localDataManager: PhotoListLocalDataManagerInputProtocol = PhotoListLocalDataManager()
        var wireFrame: PhotoListWireFrameProtocol = PhotoListWireFrame()
        
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