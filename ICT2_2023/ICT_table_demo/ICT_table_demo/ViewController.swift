//
//  ViewController.swift
//  ICT_table_demo
//
//  Created by MAC on 2/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tv: UITableView!
    var s:UITableViewCell?= UITableViewCell.reus        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            

            tv.register(self, forCellReuseIdentifier: String)
    }


}

