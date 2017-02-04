//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

class CatListPresenter
{
    weak var view: CatListViewProtocol?
    var interactor: CatListInteractorInputProtocol?
    var wireFrame: CatListWireFrameProtocol?
    
    
}

extension CatListPresenter: CatListPresenterProtocol{
    func viewDidload() {
        interactor?.getCategoryList()
    }
    
    func didSelectPhoto(photos: [Photo], catName:String) {
        wireFrame?.presentPhotoListModule(fromView: view!, photos: photos, catName:catName)
    }
}

extension CatListPresenter: CatListInteractorOutputProtocol{
    func didGetPhotoList(photos: [Photo]) {
        view?.didGetPhotoList(photos: photos)
    }
    
    func didGetCategoryList(catList: CategoryList) {
        view?.didGetCategoryList(catList: catList)
    }
}
