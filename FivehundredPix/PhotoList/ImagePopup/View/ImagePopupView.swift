//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit
import PopupController
import Kingfisher

class ImagePopupView: UIViewController
{
    var presenter: ImagePopupPresenterProtocol?

    @IBOutlet var viewGradient: UIView!
    @IBOutlet var lblDetail: UILabel!
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var scrollImage: UIScrollView!
    var photoList = [Photo]()
    override func viewDidLoad() {

        presenter?.initialScrollView(scrollView: self.scrollImage)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

}

extension UIScrollView {
    var currentPage:Int{
        return Int((self.contentOffset.x+(0.5*self.frame.size.width))/self.frame.width)
    }
}

extension ImagePopupView: ImagePopupViewProtocol{
    func didGetPhotoList(with selectedIndex: Int, photoList: [Photo]) {
        self.photoList = photoList
        presenter?.setImageDetail(photo: self.photoList[0])
        self.view.layoutIfNeeded()
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        self.scrollImage.contentSize = CGSize(width: width * CGFloat(photoList.count), height: height)

        for (index,photo) in photoList.enumerated(){
            let imageView = UIImageView(frame: CGRect(x: width * CGFloat(index), y: 0, width: width, height: height))
            imageView.kf.setImage(with: URL(string: photo.imageUrl!)!)
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            self.scrollImage.addSubview(imageView)
        }

        self.scrollImage.contentOffset = CGPoint(x: width * CGFloat(selectedIndex), y: 0)
    }

    func didSetImageDetail(detail: String) {
        self.lblDetail.text = detail

    
    }
}

extension ImagePopupView: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let photo = self.photoList[scrollView.currentPage]
        if let photoName = photo.name{
            self.lblTitle.text = "\(photo.name!)"
        }else{
            self.lblTitle.text = "Untitled"
        }

        presenter?.setImageDetail(photo: photo)
    }
}

extension ImagePopupView: PopupContentViewController{
    func sizeForPopup(_ popupController: PopupController, size: CGSize, showingKeyboard: Bool) -> CGSize {
        return self.view.frame.size
    }
}
