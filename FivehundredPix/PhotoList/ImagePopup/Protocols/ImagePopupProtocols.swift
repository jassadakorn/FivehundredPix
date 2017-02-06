//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit

protocol ImagePopupViewProtocol: class
{
    var presenter: ImagePopupPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */

    func didGetPhotoList(with selectedIndex:Int, photoList:[Photo])
    func didSetImageDetail(detail:String)
}

protocol ImagePopupWireFrameProtocol: class
{
    static func presentImagePopupModule(fromView: AnyObject, photoList:[Photo], selectedIndex:Int)
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

    func viewDidLoad()
    func initialScrollView(scrollView:UIScrollView)
    func setImageDetail(photo:Photo)
}

protocol ImagePopupInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */

    func didGetPhotoList(with selectedIndex:Int, photoList:[Photo])
}

protocol ImagePopupInteractorInputProtocol: class
{
    var presenter: ImagePopupInteractorOutputProtocol? { get set }
    var APIDataManager: ImagePopupAPIDataManagerInputProtocol? { get set }
    var localDatamanager: ImagePopupLocalDataManagerInputProtocol? { get set }
    var photoList: [Photo]? { get set }
    var selectedIndex: Int? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    func getPhotoList()
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
