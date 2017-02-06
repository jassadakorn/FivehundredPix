//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit
import PromiseKit

protocol PhotoListViewProtocol: class
{
    var presenter: PhotoListPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */

    func didGetDefaultPhotoList(photoList:[Photo], catName:String)
    func didGetPhotoList(photoList:[Photo])
    func didFinishedRefresh(with photoList:[Photo] ,refresh:UIRefreshControl)
    

}

protocol PhotoListWireFrameProtocol: class
{
    static func presentPhotoListModule(fromView: AnyObject ,photoList: [Photo] ,catName:String)
    func presentImagePopModule(fromView: AnyObject, photoList: [Photo], selectedIndex: Int)
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

    func viewDidLoad()
    func getPhotoList(only catName:String ,page:Int)
    func beginRefresh(only catName:String ,refresh:UIRefreshControl)
    func didSelectedPhoto(atIndex selectedIndex:Int, photoList: [Photo])

    
}

protocol PhotoListInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */

    func didGetDefaultPhotoList(photoList:[Photo] ,catName:String)
    func didGetPhotoList(photoList:[Photo])
    func didFinishedRefresh(with photoList:[Photo] ,refresh:UIRefreshControl)
}

protocol PhotoListInteractorInputProtocol: class
{
    var presenter: PhotoListInteractorOutputProtocol? { get set }
    var APIDataManager: PhotoListAPIDataManagerInputProtocol? { get set }
    var localDatamanager: PhotoListLocalDataManagerInputProtocol? { get set }
    var defaultPhoto: [Photo]? { get set }
    var catName: String? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */

    func getDefaultPhotoList()
    func getPhotoList(only catName:String ,page:Int)
    func beginRefresh(only catName:String ,refresh:UIRefreshControl)
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
    func getPhotoList(only catName:String ,page: Int) -> Promise<PhotoList>
}

protocol PhotoListLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
