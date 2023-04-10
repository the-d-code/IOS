//
//  ViewController.swift
//  dp_demo
//
//  Created by MAC on 3/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var mydp: UIDatePicker!
    let df=DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        df.dateFormat="dd/MM/YYYY"
        mydp.datePickerMode = .date
        l1.text=df.string(from: mydp.date)
                    }

    @IBAction func btn_cnaged(_ sender: Any) {
        l1.text=df.string(from: mydp.date)
    }
    
    @IBOutlet weak var t1: UITextField!
}

