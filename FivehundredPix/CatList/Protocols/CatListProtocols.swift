//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import PromiseKit

protocol CatListViewProtocol: class
{
    var presenter: CatListPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
    func didGetCategoryList(catList:CategoryList)
    func didGetPhotoList(photos:[Photo])
    
}

protocol CatListWireFrameProtocol: class
{
    static func presentCatListModule(fromView window: AnyObject)
    static func presentPhotoListModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol CatListPresenterProtocol: class
{
    var view: CatListViewProtocol? { get set }
    var interactor: CatListInteractorInputProtocol? { get set }
    var wireFrame: CatListWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
    
    func viewDidload()
    func didSelectRowAt(indexPath: IndexPath)
}

protocol CatListInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    func didGetCategoryList(catList:CategoryList)
    func didGetPhotoList(photos:[Photo])

}

protocol CatListInteractorInputProtocol: class
{
    var presenter: CatListInteractorOutputProtocol? { get set }
    var APIDataManager: CatListAPIDataManagerInputProtocol? { get set }
    var localDatamanager: CatListLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
    func getCategoryList()
}

protocol CatListDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol CatListAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
    func getRecentPhotos() -> Promise<PhotoList>

}

protocol CatListLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
