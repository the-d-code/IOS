//
//  ViewController.swift
//  db_demo2
//
//  Created by MAC on 2/2/23.
//

import UIKit

class ViewController: UIViewController {

    var d = DBHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //d.addrec(id: 4, name: "Manish", age: 25)
        d.read()
    }


}

