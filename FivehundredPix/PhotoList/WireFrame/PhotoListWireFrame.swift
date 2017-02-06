//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit


class PhotoListWireFrame: PhotoListWireFrameProtocol
{


    static let storyboardIdentifier = "Main"
    static let photoListIdentifier = "PhotoListView"
    class func presentPhotoListModule(fromView: AnyObject ,photoList: [Photo] ,catName:String)
    {
        // Generating module components
        let storyboard = UIStoryboard.init(name: storyboardIdentifier, bundle: Bundle.main)
        let view: PhotoListView = storyboard.instantiateViewController(withIdentifier: photoListIdentifier) as!PhotoListView
        let presenter: PhotoListPresenterProtocol & PhotoListInteractorOutputProtocol = PhotoListPresenter()
        let interactor: PhotoListInteractorInputProtocol = PhotoListInteractor()
        let APIDataManager: PhotoListAPIDataManagerInputProtocol = PhotoListAPIDataManager()
        let localDataManager: PhotoListLocalDataManagerInputProtocol = PhotoListLocalDataManager()
        let wireFrame: PhotoListWireFrameProtocol = PhotoListWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.defaultPhoto = photoList
        interactor.catName = catName
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager

        if let fromView = fromView as? UIViewController{
            fromView.navigationController?.pushViewController(view, animated: true)
        }

    }

    func presentImagePopModule(fromView: AnyObject, photoList: [Photo], selectedIndex: Int) {
        ImagePopupWireFrame.presentImagePopupModule(fromView: fromView, photoList: photoList, selectedIndex: selectedIndex)
    }


}
