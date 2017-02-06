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
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(PhotoListView.refresh(sender:)), for: .valueChanged)
        collectionPhotoList.addSubview(refreshControl)
        collectionPhotoList.alwaysBounceVertical = true
    }

    func refresh(sender:AnyObject){
        let refresh = sender as! UIRefreshControl
        presenter?.beginRefresh(only: self.catName, refresh: refresh)
    }


}

extension PhotoListView: PhotoListViewProtocol{
    func didGetDefaultPhotoList(photoList: [Photo], catName:String) {
        self.title = catName
        DispatchQueue.main.async {
            self.photoList = photoList
            self.catName = catName
            self.collectionPhotoList.reloadData()
        }
    }

    func didGetPhotoList(photoList: [Photo]) {
        DispatchQueue.main.async {
            self.currentPage += 1
            self.collectionPhotoList.reloadData()
        }
    }

    func didFinishedRefresh(with photoList:[Photo] ,refresh:UIRefreshControl){
        DispatchQueue.main.async {
            self.photoList = photoList
            self.collectionPhotoList.reloadData()
            refresh.endRefreshing()
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
        presenter?.didSelectedPhoto(atIndex: indexPath.row, photoList: self.photoList)
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let bottomEdge = scrollView.contentOffset.y + scrollView.frame.size.height
        if(bottomEdge >= scrollView.contentSize.height && !self.isEnd){
            self.presenter?.getPhotoList(only: self.catName, page: currentPage)

        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        if self.isEnd {
            return CGSize.zero
        }
        return CGSize(width: self.collectionPhotoList.frame.size.width, height: 50)
    }
}

extension PhotoListView: UICollectionViewDataSource{

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let view = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "footer", for: indexPath)
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
