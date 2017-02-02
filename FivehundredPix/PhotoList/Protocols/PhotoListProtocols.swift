//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

protocol PhotoListViewProtocol: class
{
    var presenter: PhotoListPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol PhotoListWireFrameProtocol: class
{
    class func presentPhotoListModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol PhotoListPresenterProtocol: class
{
    var view: PhotoListViewProtocol? { get set }
    var interactor: PhotoListInteractorInputProtocol? { get set }
    var wireFrame: PhotoListWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol PhotoListInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol PhotoListInteractorInputProtocol: class
{
    var presenter: PhotoListInteractorOutputProtocol? { get set }
    var APIDataManager: PhotoListAPIDataManagerInputProtocol? { get set }
    var localDatamanager: PhotoListLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol PhotoListDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol PhotoListAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol PhotoListLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
