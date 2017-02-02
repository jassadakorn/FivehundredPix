//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit

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
        
    }
    
    
}

extension CatListView: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension CatListView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatListTableViewCell") as! CatListTableViewCell
        let cat = self.catList[indexPath.row]
        cell.lblCatName.text = cat.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catList.count
    }
}
