//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit


class PhotoListPresenter
{

    weak var view: PhotoListViewProtocol?
    var interactor: PhotoListInteractorInputProtocol?
    var wireFrame: PhotoListWireFrameProtocol?


}

extension PhotoListPresenter: PhotoListPresenterProtocol{
    func viewDidLoad() {
        interactor?.getDefaultPhotoList()
    }


    func beginRefresh(only catName: String, refresh: UIRefreshControl) {
        interactor?.beginRefresh(only: catName, refresh: refresh)
    }

    func getPhotoList(only catName: String, page: Int) {
        interactor?.getPhotoList(only: catName, page: page)
    }

    func didSelectedPhoto(atIndex selectedIndex: Int, photoList: [Photo]) {
        wireFrame?.presentImagePopModule(fromView: self.view!, photoList: photoList, selectedIndex: selectedIndex)
    }

}

extension PhotoListPresenter: PhotoListInteractorOutputProtocol{
    func didGetDefaultPhotoList(photoList: [Photo], catName:String) {
        let photoListView = view as! PhotoListView
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            if(photoListView.collectionPhotoList.contentSize.height < photoListView.collectionPhotoList.frame.height){
                photoListView.presenter?.getPhotoList(only: photoListView.catName, page: photoListView.currentPage)
            }
        })
        view?.didGetDefaultPhotoList(photoList: photoList, catName:catName)
    }

    func didGetPhotoList(photoList: [Photo]) {
        let photoListView = view as! PhotoListView
        if(photoList.count == 0){
            photoListView.isEnd = true

        }
        else{
            if(photoListView.collectionPhotoList.contentSize.height < photoListView.collectionPhotoList.frame.height){
                photoListView.photoList = photoList
            }else{
                photoListView.photoList.append(contentsOf: photoList)
            }
        }

        view?.didGetPhotoList(photoList: photoList)
    }

    func didFinishedRefresh(with photoList: [Photo], refresh: UIRefreshControl) {
        view?.didFinishedRefresh(with: photoList, refresh: refresh)
    }


}
