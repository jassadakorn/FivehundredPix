//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit

class CatListView: UIViewController, CatListViewProtocol
{
    @IBOutlet var tbvCatList: UITableView!
    var presenter: CatListPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
