//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

class CatListView: UIViewController
{
    @IBOutlet var tbvCatList: UITableView!
    var presenter: CatListPresenterProtocol?
    var photos = [Photo]()
    var catList = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidload()
    }
}


extension CatListView: CatListViewProtocol{
    func didGetCategoryList(catList: CategoryList) {
        DispatchQueue.main.async {
            self.catList = catList.list
            self.tbvCatList.reloadData()
        }
    }
    
    func didGetPhotoList(photos: [Photo]) {
        self.photos = photos
    }
    
    
}

extension CatListView: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectCat = self.catList[indexPath.row]
        let photoFilter = self.photos.filter({ $0.category == Int(selectCat.id)})
        presenter?.didSelectPhoto(photos: photoFilter,catName: selectCat.name)
    }
}

extension CatListView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatListTableViewCell") as! CatListTableViewCell
        let cat = self.catList[indexPath.row]
        let photo = self.photos.filter({ photo in
            return photo.category == Int(cat.id)
        })

        if photo.count > 0 {
            let coverImage = photo[0].imageUrl!
            cell.imgCover.kf.setImage(with: URL(string:coverImage)!)
        }
        else{
            cell.imgCover.image = UIImage(named: "default")
        }

        cell.lblCatName.text = cat.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catList.count
    }
}
