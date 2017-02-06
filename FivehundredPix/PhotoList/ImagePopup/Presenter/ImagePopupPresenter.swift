//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//


import Foundation
import UIKit

class ImagePopupPresenter
{
    weak var view: ImagePopupViewProtocol?
    var interactor: ImagePopupInteractorInputProtocol?
    var wireFrame: ImagePopupWireFrameProtocol?


}

extension ImagePopupPresenter: ImagePopupPresenterProtocol{


    func viewDidLoad() {
        
    }

    func setImageDetail(photo: Photo) {
        var detail = ""
        if let aperture = photo.aperture{
            detail += "Aperture : \(aperture)\n"
        }
        if let camera = photo.camera{
            detail += "Camerta : \(camera)\n"
        }
        if let iso = photo.iso{
            detail += "ISO : \(iso)\n"
        }
        if let lens = photo.lens{
            detail += "Lens : \(lens)\n"
        }
        if let shutter = photo.shutterSpeed{
            detail += "Shutter : \(shutter)\n"
        }
            detail += "By : \(photo.user!.username!)"
        view?.didSetImageDetail(detail: detail)
    }

    func initialScrollView(scrollView: UIScrollView) {
        interactor?.getPhotoList()
    }
}

extension ImagePopupPresenter: ImagePopupInteractorOutputProtocol{
    func didGetPhotoList(with selectedIndex: Int, photoList: [Photo]) {
        view?.didGetPhotoList(with: selectedIndex, photoList: photoList)
    }

    
}
