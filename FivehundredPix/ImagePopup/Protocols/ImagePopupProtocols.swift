//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

protocol ImagePopupViewProtocol: class
{
    var presenter: ImagePopupPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol ImagePopupWireFrameProtocol: class
{
    class func presentImagePopupModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol ImagePopupPresenterProtocol: class
{
    var view: ImagePopupViewProtocol? { get set }
    var interactor: ImagePopupInteractorInputProtocol? { get set }
    var wireFrame: ImagePopupWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol ImagePopupInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol ImagePopupInteractorInputProtocol: class
{
    var presenter: ImagePopupInteractorOutputProtocol? { get set }
    var APIDataManager: ImagePopupAPIDataManagerInputProtocol? { get set }
    var localDatamanager: ImagePopupLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol ImagePopupDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol ImagePopupAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol ImagePopupLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
