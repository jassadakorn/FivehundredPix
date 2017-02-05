//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit


class PhotoListView: UIViewController
{
    @IBOutlet var collectionPhotoList: UICollectionView!
    var presenter: PhotoListPresenterProtocol?
    var photoList = [Photo]()
    var catName = ""
    var currentPage = 1
    var isEnd = false
    



    override func viewDidLoad() {
        presenter?.viewDidLoad()


    }

}

extension PhotoListView: PhotoListViewProtocol{
    func didGetDefaultPhotoList(photoList: [Photo], catName:String) {
        self.title = catName
        DispatchQueue.main.async {
            self.photoList = photoList
            self.catName = catName
            self.collectionPhotoList.reloadData()
            if(self.collectionPhotoList.contentSize.height < self.view.frame.height){
                self.presenter?.getPhotoList(only: self.catName, page: self.currentPage)
            }
        }
    }

    func didGetPhotoList(photoList: [Photo]) {

        DispatchQueue.main.async {
            if(photoList.count == 0){
                self.isEnd = true
            }
            self.currentPage += 1
            if(self.collectionPhotoList.contentSize.height < self.view.frame.height){
                self.photoList = photoList
            }else{
                self.photoList.append(contentsOf: photoList)
            }

            self.collectionPhotoList.reloadData()
        }
    }
}

extension PhotoListView: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.width / 2) - 7
        return CGSize(width: width , height: width)
    }
}

extension PhotoListView: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let bottomEdge = scrollView.contentOffset.y + scrollView.frame.size.height
        if(bottomEdge >= scrollView.contentSize.height){
            self.presenter?.getPhotoList(only: self.catName, page: currentPage)

        }
    }
}

extension PhotoListView: UICollectionViewDataSource{

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let view = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "footer", for: indexPath)
        if(isEnd){
            view.isHidden = true
        }
        return view
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoListCollectionViewCell", for: indexPath) as! PhotoListCollectionViewCell
        let photo = self.photoList[indexPath.item]
        item.imgPhoto.kf.setImage(with: URL(string: photo.imageUrl!)!)
        return item
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoList.count
    }
}
