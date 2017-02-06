//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit
import PopupController

class ImagePopupWireFrame: ImagePopupWireFrameProtocol
{


    static let storyboardIdentifier = "Main"
    static let imagePopupIdentifier = "ImagePopupView"

    class func presentImagePopupModule(fromView: AnyObject, photoList:[Photo], selectedIndex:Int)
    {
        // Generating module components
        let storyboard = UIStoryboard.init(name: storyboardIdentifier, bundle: Bundle.main)
        let view: ImagePopupView = storyboard.instantiateViewController(withIdentifier: imagePopupIdentifier) as!ImagePopupView
        let presenter: ImagePopupPresenterProtocol & ImagePopupInteractorOutputProtocol = ImagePopupPresenter()
        let interactor: ImagePopupInteractorInputProtocol = ImagePopupInteractor()
        let APIDataManager: ImagePopupAPIDataManagerInputProtocol = ImagePopupAPIDataManager()
        let localDataManager: ImagePopupLocalDataManagerInputProtocol = ImagePopupLocalDataManager()
        let wireFrame: ImagePopupWireFrameProtocol = ImagePopupWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.photoList = photoList
        interactor.selectedIndex = selectedIndex
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager

        if let fromView = fromView as? UIViewController{
            PopupController
                .create(fromView)
                .customize(
                    [
                        .scrollable(true)
                    ]
                )
                .show(view)
        }
    }
}
