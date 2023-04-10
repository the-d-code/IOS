//
//  ViewController.swift
//  ICT2_data_sharing
//
//  Created by MAC on 1/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_click(_ sender: Any) {
        performSegue(withIdentifier: "s1", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "s1")
        {
            var dest = segue.destination as! dvc
            dest.mystr = uname.text!
        }
    }
    
}

