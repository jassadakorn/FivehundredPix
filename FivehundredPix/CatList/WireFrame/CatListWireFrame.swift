//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit

class CatListWireFrame: CatListWireFrameProtocol
{
    
    static let catListIdentifier = "CatListView"
    static let storyboardIdentifier = "Main"
    
    class func presentCatListModule(fromView window: AnyObject)
    {
        // Generating module components
        let storyboard = UIStoryboard.init(name: storyboardIdentifier, bundle: Bundle.main)
        let view: CatListView = storyboard.instantiateViewController(withIdentifier: catListIdentifier) as!CatListView
        let presenter: CatListPresenterProtocol & CatListInteractorOutputProtocol = CatListPresenter()
        let interactor: CatListInteractorInputProtocol = CatListInteractor()
        let APIDataManager: CatListAPIDataManagerInputProtocol = CatListAPIDataManager()
        let localDataManager: CatListLocalDataManagerInputProtocol = CatListLocalDataManager()
        let wireFrame: CatListWireFrameProtocol = CatListWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
        
        // set to root navigation controller
        if let window = window as? UIWindow, let nav = window.rootViewController as? UINavigationController {
            nav.viewControllers = [view]
        }

    }


    
    func presentPhotoListModule(fromView view: AnyObject, photos: [Photo], catName:String) {
        PhotoListWireFrame.presentPhotoListModule(fromView: view, photoList: photos ,catName: catName)
    }


}
