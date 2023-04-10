//
//  ViewController.swift
//  ICT2_data_sharing2
//
//  Created by MAC on 1/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: Any) {
        performSegue(withIdentifier: "s1", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "s1")
        {
            var d = segue.destination as! dvc
            d.msg = myname.text!
            
        }
    }
    
}

