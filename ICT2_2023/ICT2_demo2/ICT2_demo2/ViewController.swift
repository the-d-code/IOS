//
//  ViewController.swift
//  ICT2_demo2
//
//  Created by MAC on 1/17/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func btn_click(_ sender: Any) {
        label1.text=t1.text
    }
    
}

